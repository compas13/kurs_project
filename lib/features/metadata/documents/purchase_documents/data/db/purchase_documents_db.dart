import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import '../../../../../../shared/data/db/init_db.dart';
import '../collections/purchase_documents_collection.dart';
import '../models/purchase_documents_model.dart';

class PurchaseDocumentsDB extends ChangeNotifier {
  final List<PurchaseDocumentsCollection> currentPurchaseDocumentsList = [];
  var isar = InitDB.isar;

  // C R E A T E / U P D A T E -------------------------------------------------------------------
  Future<void> putPurchaseDocuments({required PurchaseDocumentsModel purchaseDocumentsModel}) async {
    final PurchaseDocumentsCollection purchaseDocumentsCollection = purchaseDocumentsModel.toCollection();
    await isar.writeTxn(() => isar.purchaseDocumentsCollections.put(purchaseDocumentsCollection));
    await isar.writeTxn(() => purchaseDocumentsCollection.organization.save());
    await isar.writeTxn(() => purchaseDocumentsCollection.customer.save());
    await isar.writeTxn(() => purchaseDocumentsCollection.product.save());
    readPurchaseDocuments();
  }

  // R E A D  A L L  N O T  D E L E T E ----------------------------------------------------------
  Future<void> readPurchaseDocuments() async {
    List<PurchaseDocumentsCollection> readedPurchaseDocuments = await isar.purchaseDocumentsCollections.filter().deleteMarkEqualTo(false).findAll();
    currentPurchaseDocumentsList.clear();
    currentPurchaseDocumentsList.addAll(readedPurchaseDocuments);
    notifyListeners();
  }

  // D E L E T E  I D ----------------------------------------------------------------------------
  Future<void> deletePurchaseDocuments(int id) async {
    await isar.writeTxn(() async {
      await isar.purchaseDocumentsCollections.delete(id);
    });
    await readPurchaseDocuments(); // Обновляем текущие элементы после удаления
  }
  
  // S E T  M A R K  D E L E T E  I D ------------------------------------------------------------
  Future<void> setDeleteMarkPurchaseDocuments({required PurchaseDocumentsModel purchaseDocumentsModel, required bool value}) async {
    purchaseDocumentsModel.deleteMark = value;
    await isar.writeTxn(() => isar.purchaseDocumentsCollections.put(purchaseDocumentsModel.toCollection()));
    readPurchaseDocuments();
  }
}