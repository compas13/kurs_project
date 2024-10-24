import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import '../../../../../../shared/data/db/init_db.dart';
import '../collections/counteragents_collection.dart';
import '../models/counteragents_model.dart';

class CounteragentsDB extends ChangeNotifier {
  final List<CounteragentsCollection> currentCounteragentsList = [];
  var isar = InitDB.isar;

  // C R E A T E / U P D A T E -------------------------------------------------------------------
  Future<void> putCounteragents({required CounteragentsModel counteragentsModel}) async {
    final CounteragentsCollection counteragentsCollection = counteragentsModel.toCollection();
    await isar.writeTxn(() => isar.counteragentsCollections.put(counteragentsCollection));

    readCounteragents();
  }

  // R E A D  A L L  N O T  D E L E T E ----------------------------------------------------------
  Future<void> readCounteragents() async {
    List<CounteragentsCollection> readedCounteragents = await isar.counteragentsCollections.filter().deleteMarkEqualTo(false).findAll();
    currentCounteragentsList.clear();
    currentCounteragentsList.addAll(readedCounteragents);
    notifyListeners();
  }

  // D E L E T E  I D ----------------------------------------------------------------------------
  Future<void> deleteCounteragents(int id) async {
    await isar.writeTxn(() async {
      await isar.counteragentsCollections.delete(id);
    });
    await readCounteragents(); // Обновляем текущие элементы после удаления
  }
  
  // S E T  M A R K  D E L E T E  I D ------------------------------------------------------------
  Future<void> setDeleteMarkCounteragents({required CounteragentsModel counteragentsModel, required bool value}) async {
    counteragentsModel.deleteMark = value;
    await isar.writeTxn(() => isar.counteragentsCollections.put(counteragentsModel.toCollection()));
    readCounteragents();
  }
}