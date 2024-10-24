import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import '../../../../../../shared/data/db/init_db.dart';
import '../collections/sale_documents_collection.dart';
import '../models/sale_documents_model.dart';

class SaleDocumentsDB extends ChangeNotifier {
  final List<SaleDocumentsCollection> currentSaleDocumentsList = [];
  var isar = InitDB.isar;

  // C R E A T E / U P D A T E -------------------------------------------------------------------
  Future<void> putSaleDocuments({required SaleDocumentsModel saleDocumentsModel}) async {
    final SaleDocumentsCollection saleDocumentsCollection = saleDocumentsModel.toCollection();
    await isar.writeTxn(() => isar.saleDocumentsCollections.put(saleDocumentsCollection));
    await isar.writeTxn(() => saleDocumentsCollection.organization.save());
    await isar.writeTxn(() => saleDocumentsCollection.customer.save());
    await isar.writeTxn(() => saleDocumentsCollection.product.save());
    readSaleDocuments();
  }

  // R E A D  A L L  N O T  D E L E T E ----------------------------------------------------------
  Future<void> readSaleDocuments() async {
    List<SaleDocumentsCollection> readedSaleDocuments = await isar.saleDocumentsCollections.filter().deleteMarkEqualTo(false).findAll();
    currentSaleDocumentsList.clear();
    currentSaleDocumentsList.addAll(readedSaleDocuments);
    notifyListeners();
  }

  // D E L E T E  I D ----------------------------------------------------------------------------
  Future<void> deleteSaleDocuments(int id) async {
    await isar.writeTxn(() async {
      await isar.saleDocumentsCollections.delete(id);
    });
    await readSaleDocuments(); // Обновляем текущие элементы после удаления
  }
  
  // S E T  M A R K  D E L E T E  I D ------------------------------------------------------------
  Future<void> setDeleteMarkSaleDocuments({required SaleDocumentsModel saleDocumentsModel, required bool value}) async {
    saleDocumentsModel.deleteMark = value;
    await isar.writeTxn(() => isar.saleDocumentsCollections.put(saleDocumentsModel.toCollection()));
    readSaleDocuments();
  }
}