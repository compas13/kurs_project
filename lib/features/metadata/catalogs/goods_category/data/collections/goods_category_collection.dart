import 'package:isar/isar.dart';

import '../models/goods_category_model.dart';
 

part 'goods_category_collection.g.dart';

@Collection()
class GoodsCategoryCollection {
  Id id = Isar.autoIncrement;
  bool deleteMark = false;
  String name = '';  

  // конвертация коллекции isar в модель
  GoodsCategoryModel toModel() {

    final goodsCategoryModel = GoodsCategoryModel(
      id: id,
      name: name,
    );

    return goodsCategoryModel;
  }
}