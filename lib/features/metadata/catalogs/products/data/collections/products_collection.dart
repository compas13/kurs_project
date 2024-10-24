import 'package:isar/isar.dart';

import '../models/products_model.dart';
import '../../../units/data/collections/units_collection.dart';
import '../../../../catalogs/units/data/models/units_model.dart';
import '../../../goods_category/data/collections/goods_category_collection.dart';
import '../../../../catalogs/goods_category/data/models/goods_category_model.dart'; 

part 'products_collection.g.dart';

@Collection()
class ProductsCollection {
  Id id = Isar.autoIncrement;
  bool deleteMark = false;
  String name = '';
  final unit = IsarLink<UnitsCollection>();
  final category = IsarLink<GoodsCategoryCollection>();
  bool isService = false;  

  // конвертация коллекции isar в модель
  ProductsModel toModel() {
    final unitModel = unit.value == null ? UnitsModel() : unit.value!.toModel(); // ссылочный реквизит
    final categoryModel = category.value == null ? GoodsCategoryModel() : category.value!.toModel(); // ссылочный реквизит
    final productsModel = ProductsModel(
      id: id,
      name: name,
      unit: unitModel,
      category: categoryModel,
      isService: isService,
    );

    return productsModel;
  }
}