   
import '../collections/units_collection.dart';

class UnitsModel {
  final int id;
  bool deleteMark;  
  final String name;

  UnitsModel._({
    required this.id,
    required this.deleteMark,
    required this.name,
  });

  factory UnitsModel({
    int id = 0,
    bool deleteMark = false,
    String name = '',
  }) {
    return UnitsModel._(
      id: id,
      deleteMark: deleteMark,
      name: name,
    );
  }
  
  // конвертация экземпляра класса в коллекцию для isar
  UnitsCollection toCollection() {
    final unitsCollection = UnitsCollection();
    if (id != 0) {
      unitsCollection.id = id;
    }
    unitsCollection.deleteMark = deleteMark;
    unitsCollection.name = name;
    return unitsCollection;
  }
}