import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import '../../../../../../shared/data/db/init_db.dart';
import '../collections/oganizations_collection.dart';
import '../models/oganizations_model.dart';

class OganizationsDB extends ChangeNotifier {
  final List<OganizationsCollection> currentOganizationsList = [];
  var isar = InitDB.isar;

  // C R E A T E / U P D A T E -------------------------------------------------------------------
  Future<void> putOganizations({required OganizationsModel oganizationsModel}) async {
    final OganizationsCollection oganizationsCollection = oganizationsModel.toCollection();
    await isar.writeTxn(() => isar.oganizationsCollections.put(oganizationsCollection));

    readOganizations();
  }

  // R E A D  A L L  N O T  D E L E T E ----------------------------------------------------------
  Future<void> readOganizations() async {
    List<OganizationsCollection> readedOganizations = await isar.oganizationsCollections.filter().deleteMarkEqualTo(false).findAll();
    currentOganizationsList.clear();
    currentOganizationsList.addAll(readedOganizations);
    notifyListeners();
  }

  // D E L E T E  I D ----------------------------------------------------------------------------
  Future<void> deleteOganizations(int id) async {
    await isar.writeTxn(() async {
      await isar.oganizationsCollections.delete(id);
    });
    await readOganizations(); // Обновляем текущие элементы после удаления
  }
  
  // S E T  M A R K  D E L E T E  I D ------------------------------------------------------------
  Future<void> setDeleteMarkOganizations({required OganizationsModel oganizationsModel, required bool value}) async {
    oganizationsModel.deleteMark = value;
    await isar.writeTxn(() => isar.oganizationsCollections.put(oganizationsModel.toCollection()));
    readOganizations();
  }
}