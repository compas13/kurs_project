import 'package:isar/isar.dart';

import '../models/units_model.dart';
 

part 'units_collection.g.dart';

@Collection()
class UnitsCollection {
  Id id = Isar.autoIncrement;
  bool deleteMark = false;
  String name = '';  

  // конвертация коллекции isar в модель
  UnitsModel toModel() {

    final unitsModel = UnitsModel(
      id: id,
      name: name,
    );

    return unitsModel;
  }
}