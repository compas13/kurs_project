   
import '../collections/oganizations_collection.dart';

class OganizationsModel {
  final int id;
  bool deleteMark;  
  final String name;
  final String inn;
  final String kpp;
  final String adress;

  OganizationsModel._({
    required this.id,
    required this.deleteMark,
    required this.name,
    required this.inn,
    required this.kpp,
    required this.adress,
  });

  factory OganizationsModel({
    int id = 0,
    bool deleteMark = false,
    String name = '',
    String inn = '',
    String kpp = '',
    String adress = '',
  }) {
    return OganizationsModel._(
      id: id,
      deleteMark: deleteMark,
      name: name,
      inn: inn,
      kpp: kpp,
      adress: adress,
    );
  }
  
  // конвертация экземпляра класса в коллекцию для isar
  OganizationsCollection toCollection() {
    final oganizationsCollection = OganizationsCollection();
    if (id != 0) {
      oganizationsCollection.id = id;
    }
    oganizationsCollection.deleteMark = deleteMark;
    oganizationsCollection.name = name;
    oganizationsCollection.inn = inn;
    oganizationsCollection.kpp = kpp;
    oganizationsCollection.adress = adress;
    return oganizationsCollection;
  }
}