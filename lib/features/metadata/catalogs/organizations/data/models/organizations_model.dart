   
import '../collections/organizations_collection.dart';

class OrganizationsModel {
  final int id;
  bool deleteMark;  
  final String name;
  final String inn;
  final String kpp;
  final String adress;

  OrganizationsModel._({
    required this.id,
    required this.deleteMark,
    required this.name,
    required this.inn,
    required this.kpp,
    required this.adress,
  });

  factory OrganizationsModel({
    int id = 0,
    bool deleteMark = false,
    String name = '',
    String inn = '',
    String kpp = '',
    String adress = '',
  }) {
    return OrganizationsModel._(
      id: id,
      deleteMark: deleteMark,
      name: name,
      inn: inn,
      kpp: kpp,
      adress: adress,
    );
  }
  
  // конвертация экземпляра класса в коллекцию для isar
  OrganizationsCollection toCollection() {
    final organizationsCollection = OrganizationsCollection();
    if (id != 0) {
      organizationsCollection.id = id;
    }
    organizationsCollection.deleteMark = deleteMark;
    organizationsCollection.name = name;
    organizationsCollection.inn = inn;
    organizationsCollection.kpp = kpp;
    organizationsCollection.adress = adress;
    return organizationsCollection;
  }
}