import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import '../../../../../../shared/data/db/init_db.dart';
import '../collections/units_collection.dart';
import '../models/units_model.dart';

class UnitsDB extends ChangeNotifier {
  final List<UnitsCollection> currentUnitsList = [];
  var isar = InitDB.isar;

  // C R E A T E / U P D A T E -------------------------------------------------------------------
  Future<void> putUnits({required UnitsModel unitsModel}) async {
    final UnitsCollection unitsCollection = unitsModel.toCollection();
    await isar.writeTxn(() => isar.unitsCollections.put(unitsCollection));

    readUnits();
  }

  // R E A D  A L L  N O T  D E L E T E ----------------------------------------------------------
  Future<void> readUnits() async {
    List<UnitsCollection> readedUnits = await isar.unitsCollections.filter().deleteMarkEqualTo(false).findAll();
    currentUnitsList.clear();
    currentUnitsList.addAll(readedUnits);
    notifyListeners();
  }

  // D E L E T E  I D ----------------------------------------------------------------------------
  Future<void> deleteUnits(int id) async {
    await isar.writeTxn(() async {
      await isar.unitsCollections.delete(id);
    });
    await readUnits(); // Обновляем текущие элементы после удаления
  }
  
  // S E T  M A R K  D E L E T E  I D ------------------------------------------------------------
  Future<void> setDeleteMarkUnits({required UnitsModel unitsModel, required bool value}) async {
    unitsModel.deleteMark = value;
    await isar.writeTxn(() => isar.unitsCollections.put(unitsModel.toCollection()));
    readUnits();
  }
}