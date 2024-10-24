import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import '../../../../../../shared/data/db/init_db.dart';
import '../collections/organizations_collection.dart';
import '../models/organizations_model.dart';

class OrganizationsDB extends ChangeNotifier {
  final List<OrganizationsCollection> currentOrganizationsList = [];
  var isar = InitDB.isar;

  // C R E A T E / U P D A T E -------------------------------------------------------------------
  Future<void> putOrganizations({required OrganizationsModel organizationsModel}) async {
    final OrganizationsCollection organizationsCollection = organizationsModel.toCollection();
    await isar.writeTxn(() => isar.organizationsCollections.put(organizationsCollection));

    readOrganizations();
  }

  // R E A D  A L L  N O T  D E L E T E ----------------------------------------------------------
  Future<void> readOrganizations() async {
    List<OrganizationsCollection> readedOrganizations = await isar.organizationsCollections.filter().deleteMarkEqualTo(false).findAll();
    currentOrganizationsList.clear();
    currentOrganizationsList.addAll(readedOrganizations);
    notifyListeners();
  }

  // D E L E T E  I D ----------------------------------------------------------------------------
  Future<void> deleteOrganizations(int id) async {
    await isar.writeTxn(() async {
      await isar.organizationsCollections.delete(id);
    });
    await readOrganizations(); // Обновляем текущие элементы после удаления
  }
  
  // S E T  M A R K  D E L E T E  I D ------------------------------------------------------------
  Future<void> setDeleteMarkOrganizations({required OrganizationsModel organizationsModel, required bool value}) async {
    organizationsModel.deleteMark = value;
    await isar.writeTxn(() => isar.organizationsCollections.put(organizationsModel.toCollection()));
    readOrganizations();
  }
}