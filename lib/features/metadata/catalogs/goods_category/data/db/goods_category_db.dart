import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import '../../../../../../shared/data/db/init_db.dart';
import '../collections/goods_category_collection.dart';
import '../models/goods_category_model.dart';

class GoodsCategoryDB extends ChangeNotifier {
  final List<GoodsCategoryCollection> currentGoodsCategoryList = [];
  var isar = InitDB.isar;

  // C R E A T E / U P D A T E -------------------------------------------------------------------
  Future<void> putGoodsCategory({required GoodsCategoryModel goodsCategoryModel}) async {
    final GoodsCategoryCollection goodsCategoryCollection = goodsCategoryModel.toCollection();
    await isar.writeTxn(() => isar.goodsCategoryCollections.put(goodsCategoryCollection));

    readGoodsCategory();
  }

  // R E A D  A L L  N O T  D E L E T E ----------------------------------------------------------
  Future<void> readGoodsCategory() async {
    List<GoodsCategoryCollection> readedGoodsCategory = await isar.goodsCategoryCollections.filter().deleteMarkEqualTo(false).findAll();
    currentGoodsCategoryList.clear();
    currentGoodsCategoryList.addAll(readedGoodsCategory);
    notifyListeners();
  }

  // D E L E T E  I D ----------------------------------------------------------------------------
  Future<void> deleteGoodsCategory(int id) async {
    await isar.writeTxn(() async {
      await isar.goodsCategoryCollections.delete(id);
    });
    await readGoodsCategory(); // Обновляем текущие элементы после удаления
  }
  
  // S E T  M A R K  D E L E T E  I D ------------------------------------------------------------
  Future<void> setDeleteMarkGoodsCategory({required GoodsCategoryModel goodsCategoryModel, required bool value}) async {
    goodsCategoryModel.deleteMark = value;
    await isar.writeTxn(() => isar.goodsCategoryCollections.put(goodsCategoryModel.toCollection()));
    readGoodsCategory();
  }
}