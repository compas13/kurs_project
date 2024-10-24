import '../../../../catalogs/organizations/data/models/organizations_model.dart';
import '../../../../catalogs/counteragents/data/models/counteragents_model.dart';
import '../../../../catalogs/products/data/models/products_model.dart';   
import '../collections/sale_documents_collection.dart';

class SaleDocumentsModel {
  final int id;
  bool deleteMark;  
  final DateTime date;
  final OrganizationsModel organization;
  final CounteragentsModel customer;
  final ProductsModel product;
  final double quantity;
  final double price;
  final double sum;

  SaleDocumentsModel._({
    required this.id,
    required this.deleteMark,
    required this.date,
    required this.organization,
    required this.customer,
    required this.product,
    required this.quantity,
    required this.price,
    required this.sum,
  });

  factory SaleDocumentsModel({
    int id = 0,
    bool deleteMark = false,
    DateTime? date,
    OrganizationsModel? organization,
    CounteragentsModel? customer,
    ProductsModel? product,
    double quantity = 0,
    double price = 0,
    double sum = 0,
  }) {
    return SaleDocumentsModel._(
      id: id,
      deleteMark: deleteMark,
      date: date ?? DateTime.now(),
      organization: organization ?? OrganizationsModel(),
      customer: customer ?? CounteragentsModel(),
      product: product ?? ProductsModel(),
      quantity: quantity,
      price: price,
      sum: sum,
    );
  }
  
  // конвертация экземпляра класса в коллекцию для isar
  SaleDocumentsCollection toCollection() {
    final saleDocumentsCollection = SaleDocumentsCollection();
    if (id != 0) {
      saleDocumentsCollection.id = id;
    }
    saleDocumentsCollection.deleteMark = deleteMark;
    saleDocumentsCollection.date = date;
    saleDocumentsCollection.organization.value = organization.toCollection();
    saleDocumentsCollection.customer.value = customer.toCollection();
    saleDocumentsCollection.product.value = product.toCollection();
    saleDocumentsCollection.quantity = quantity;
    saleDocumentsCollection.price = price;
    saleDocumentsCollection.sum = sum;
    return saleDocumentsCollection;
  }
}