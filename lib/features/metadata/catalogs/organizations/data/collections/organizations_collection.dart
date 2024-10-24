import 'package:isar/isar.dart';

import '../models/organizations_model.dart';
 

part 'organizations_collection.g.dart';

@Collection()
class OrganizationsCollection {
  Id id = Isar.autoIncrement;
  bool deleteMark = false;
  String name = '';
  String inn = '';
  String kpp = '';
  String adress = '';  

  // конвертация коллекции isar в модель
  OrganizationsModel toModel() {

    final organizationsModel = OrganizationsModel(
      id: id,
      name: name,
      inn: inn,
      kpp: kpp,
      adress: adress,
    );

    return organizationsModel;
  }
}