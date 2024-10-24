import 'package:isar/isar.dart';

import '../models/counteragents_model.dart';
 

part 'counteragents_collection.g.dart';

@Collection()
class CounteragentsCollection {
  Id id = Isar.autoIncrement;
  bool deleteMark = false;
  String name = '';
  String inn = '';
  String kpp = '';
  String adress = '';  

  // конвертация коллекции isar в модель
  CounteragentsModel toModel() {

    final counteragentsModel = CounteragentsModel(
      id: id,
      name: name,
      inn: inn,
      kpp: kpp,
      adress: adress,
    );

    return counteragentsModel;
  }
}