import 'package:isar/isar.dart';

import '../models/sale_documents_model.dart';
import '../../../../catalogs/organizations/data/collections/organizations_collection.dart';
import '../../../../catalogs/organizations/data/models/organizations_model.dart';
import '../../../../catalogs/counteragents/data/collections/counteragents_collection.dart';
import '../../../../catalogs/counteragents/data/models/counteragents_model.dart';
import '../../../../catalogs/products/data/collections/products_collection.dart';
import '../../../../catalogs/products/data/models/products_model.dart'; 

part 'sale_documents_collection.g.dart';

@Collection()
class SaleDocumentsCollection {
  Id id = Isar.autoIncrement;
  bool deleteMark = false;
  DateTime date = DateTime.now();
  final organization = IsarLink<OrganizationsCollection>();
  final customer = IsarLink<CounteragentsCollection>();
  final product = IsarLink<ProductsCollection>();
  double quantity = 0;
  double price = 0;
  double sum = 0;  

  // конвертация коллекции isar в модель
  SaleDocumentsModel toModel() {
    final organizationModel = organization.value == null ? OrganizationsModel() : organization.value!.toModel(); // ссылочный реквизит
    final customerModel = customer.value == null ? CounteragentsModel() : customer.value!.toModel(); // ссылочный реквизит
    final productModel = product.value == null ? ProductsModel() : product.value!.toModel(); // ссылочный реквизит
    final saleDocumentsModel = SaleDocumentsModel(
      id: id,
      date: date,
      organization: organizationModel,
      customer: customerModel,
      product: productModel,
      quantity: quantity,
      price: price,
      sum: sum,
    );

    return saleDocumentsModel;
  }
}