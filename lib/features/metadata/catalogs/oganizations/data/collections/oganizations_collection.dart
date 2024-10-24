import 'package:isar/isar.dart';

import '../models/oganizations_model.dart';
 

part 'oganizations_collection.g.dart';

@Collection()
class OganizationsCollection {
  Id id = Isar.autoIncrement;
  bool deleteMark = false;
  String name = '';
  String inn = '';
  String kpp = '';
  String adress = '';  

  // конвертация коллекции isar в модель
  OganizationsModel toModel() {

    final oganizationsModel = OganizationsModel(
      id: id,
      name: name,
      inn: inn,
      kpp: kpp,
      adress: adress,
    );

    return oganizationsModel;
  }
}