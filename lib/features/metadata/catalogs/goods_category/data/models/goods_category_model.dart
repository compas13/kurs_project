   
import '../collections/goods_category_collection.dart';

class GoodsCategoryModel {
  final int id;
  bool deleteMark;  
  final String name;

  GoodsCategoryModel._({
    required this.id,
    required this.deleteMark,
    required this.name,
  });

  factory GoodsCategoryModel({
    int id = 0,
    bool deleteMark = false,
    String name = '',
  }) {
    return GoodsCategoryModel._(
      id: id,
      deleteMark: deleteMark,
      name: name,
    );
  }
  
  // конвертация экземпляра класса в коллекцию для isar
  GoodsCategoryCollection toCollection() {
    final goodsCategoryCollection = GoodsCategoryCollection();
    if (id != 0) {
      goodsCategoryCollection.id = id;
    }
    goodsCategoryCollection.deleteMark = deleteMark;
    goodsCategoryCollection.name = name;
    return goodsCategoryCollection;
  }
}