import '../../../units/data/models/units_model.dart';
import '../../../goods_category/data/models/goods_category_model.dart';   
import '../collections/products_collection.dart';

class ProductsModel {
  final int id;
  bool deleteMark;  
  final String name;
  final UnitsModel unit;
  final GoodsCategoryModel category;
  final bool isService;

  ProductsModel._({
    required this.id,
    required this.deleteMark,
    required this.name,
    required this.unit,
    required this.category,
    required this.isService,
  });

  factory ProductsModel({
    int id = 0,
    bool deleteMark = false,
    String name = '',
    UnitsModel? unit,
    GoodsCategoryModel? category,
    bool isService = false,
  }) {
    return ProductsModel._(
      id: id,
      deleteMark: deleteMark,
      name: name,
      unit: unit ?? UnitsModel(),
      category: category ?? GoodsCategoryModel(),
      isService: isService,
    );
  }
  
  // конвертация экземпляра класса в коллекцию для isar
  ProductsCollection toCollection() {
    final productsCollection = ProductsCollection();
    if (id != 0) {
      productsCollection.id = id;
    }
    productsCollection.deleteMark = deleteMark;
    productsCollection.name = name;
    productsCollection.unit.value = unit.toCollection();
    productsCollection.category.value = category.toCollection();
    productsCollection.isService = isService;
    return productsCollection;
  }
}