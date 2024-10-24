   
import '../collections/counteragents_collection.dart';

class CounteragentsModel {
  final int id;
  bool deleteMark;  
  final String name;
  final String inn;
  final String kpp;
  final String adress;

  CounteragentsModel._({
    required this.id,
    required this.deleteMark,
    required this.name,
    required this.inn,
    required this.kpp,
    required this.adress,
  });

  factory CounteragentsModel({
    int id = 0,
    bool deleteMark = false,
    String name = '',
    String inn = '',
    String kpp = '',
    String adress = '',
  }) {
    return CounteragentsModel._(
      id: id,
      deleteMark: deleteMark,
      name: name,
      inn: inn,
      kpp: kpp,
      adress: adress,
    );
  }
  
  // конвертация экземпляра класса в коллекцию для isar
  CounteragentsCollection toCollection() {
    final counteragentsCollection = CounteragentsCollection();
    if (id != 0) {
      counteragentsCollection.id = id;
    }
    counteragentsCollection.deleteMark = deleteMark;
    counteragentsCollection.name = name;
    counteragentsCollection.inn = inn;
    counteragentsCollection.kpp = kpp;
    counteragentsCollection.adress = adress;
    return counteragentsCollection;
  }
}