import '../../../../catalogs/organizations/data/models/organizations_model.dart';
import '../../../../catalogs/counteragents/data/models/counteragents_model.dart';
import '../../../../catalogs/products/data/models/products_model.dart';   
import '../collections/purchase_documents_collection.dart';

class PurchaseDocumentsModel {
  final int id;
  bool deleteMark;  
  final DateTime date;
  final OrganizationsModel organization;
  final CounteragentsModel customer;
  final ProductsModel product;
  final double quantity;
  final double price;
  final double sum;

  PurchaseDocumentsModel._({
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

  factory PurchaseDocumentsModel({
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
    return PurchaseDocumentsModel._(
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
  PurchaseDocumentsCollection toCollection() {
    final purchaseDocumentsCollection = PurchaseDocumentsCollection();
    if (id != 0) {
      purchaseDocumentsCollection.id = id;
    }
    purchaseDocumentsCollection.deleteMark = deleteMark;
    purchaseDocumentsCollection.date = date;
    purchaseDocumentsCollection.organization.value = organization.toCollection();
    purchaseDocumentsCollection.customer.value = customer.toCollection();
    purchaseDocumentsCollection.product.value = product.toCollection();
    purchaseDocumentsCollection.quantity = quantity;
    purchaseDocumentsCollection.price = price;
    purchaseDocumentsCollection.sum = sum;
    return purchaseDocumentsCollection;
  }
}