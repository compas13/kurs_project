import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import '../../../../../../shared/data/db/init_db.dart';
import '../collections/products_collection.dart';
import '../models/products_model.dart';

class ProductsDB extends ChangeNotifier {
  final List<ProductsCollection> currentProductsList = [];
  var isar = InitDB.isar;

  // C R E A T E / U P D A T E -------------------------------------------------------------------
  Future<void> putProducts({required ProductsModel productsModel}) async {
    final ProductsCollection productsCollection = productsModel.toCollection();
    await isar.writeTxn(() => isar.productsCollections.put(productsCollection));
    await isar.writeTxn(() => productsCollection.unit.save());
    await isar.writeTxn(() => productsCollection.category.save());
    readProducts();
  }

  // R E A D  A L L  N O T  D E L E T E ----------------------------------------------------------
  Future<void> readProducts() async {
    List<ProductsCollection> readedProducts = await isar.productsCollections.filter().deleteMarkEqualTo(false).findAll();
    currentProductsList.clear();
    currentProductsList.addAll(readedProducts);
    notifyListeners();
  }

  // D E L E T E  I D ----------------------------------------------------------------------------
  Future<void> deleteProducts(int id) async {
    await isar.writeTxn(() async {
      await isar.productsCollections.delete(id);
    });
    await readProducts(); // Обновляем текущие элементы после удаления
  }
  
  // S E T  M A R K  D E L E T E  I D ------------------------------------------------------------
  Future<void> setDeleteMarkProducts({required ProductsModel productsModel, required bool value}) async {
    productsModel.deleteMark = value;
    await isar.writeTxn(() => isar.productsCollections.put(productsModel.toCollection()));
    readProducts();
  }
}