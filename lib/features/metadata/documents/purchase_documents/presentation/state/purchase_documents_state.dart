import 'package:flutter/material.dart';
import '../../data/models/purchase_documents_model.dart';
import '../../../../catalogs/organizations/data/models/organizations_model.dart';
import '../../../../catalogs/counteragents/data/models/counteragents_model.dart';
import '../../../../catalogs/products/data/models/products_model.dart';

class PurchaseDocumentsState extends ChangeNotifier {
  int id = 0;
  bool deleteMark = false; // пометка на удаление
  bool modified = false; // состояние элемента модифицировано
  bool needInit = true; // состояние провайдера предполагает инициализацию. Назначается true во время первой инициализации
  DateTime date = DateTime.now();
  OrganizationsModel organization = OrganizationsModel();
  CounteragentsModel customer = CounteragentsModel();
  ProductsModel product = ProductsModel();
  double quantity = 0;
  double price = 0;
  double sum = 0;

  // Инициализация состояния из переданной модели
  void initProvider(PurchaseDocumentsModel purchaseDocumentsModel) {
    if (needInit) {
      if (purchaseDocumentsModel.id != 0) {
        needInit = false;
        id = purchaseDocumentsModel.id;
        date = purchaseDocumentsModel.date;
        organization = purchaseDocumentsModel.organization;
        customer = purchaseDocumentsModel.customer;
        product = purchaseDocumentsModel.product;
        quantity = purchaseDocumentsModel.quantity;
        price = purchaseDocumentsModel.price;
        sum = purchaseDocumentsModel.sum;
        
      } else {
        clearProvider();
      }
    }
  }

  // Установка параметров по дефолту
  void defoultProvider() {
    id = 0;
    deleteMark = false;
    modified = false;
    date = DateTime.now();
    organization = OrganizationsModel();
    customer = CounteragentsModel();
    product = ProductsModel();
    quantity = 0;
    price = 0;
    sum = 0;
  }

  // Очистка состояния, но без необходимости инициализировать
  void clearProvider() {
    defoultProvider();
    needInit = false;
  }

  // Очистка состояния с необходимостью в дальнейшем заново инициализировать
  void deleteProvider() {
    defoultProvider();
    needInit = true;
  }

  // Сеттер поля date с уведомлением слушателей (для изменения реквизитов стейта вне основного редактирования информации, например в другом окне)
  void setDate(DateTime value) {
    date = value;
    notifyListeners();
  }

  // Сеттер поля organization с уведомлением слушателей (для изменения реквизитов стейта вне основного редактирования информации, например в другом окне)
  void setOrganization(OrganizationsModel value) {
    organization = value;
    notifyListeners();
  }

  // Сеттер поля customer с уведомлением слушателей (для изменения реквизитов стейта вне основного редактирования информации, например в другом окне)
  void setCustomer(CounteragentsModel value) {
    customer = value;
    notifyListeners();
  }

  // Сеттер поля product с уведомлением слушателей (для изменения реквизитов стейта вне основного редактирования информации, например в другом окне)
  void setProduct(ProductsModel value) {
    product = value;
    notifyListeners();
  }

  // Сеттер поля quantity с уведомлением слушателей (для изменения реквизитов стейта вне основного редактирования информации, например в другом окне)
  void setQuantity(double value) {
    quantity = value;    sum = quantity * price;
    notifyListeners();
  }

  // Сеттер поля price с уведомлением слушателей (для изменения реквизитов стейта вне основного редактирования информации, например в другом окне)
  void setPrice(double value) {
    price = value;    sum = quantity * price;
    notifyListeners();
  }

  // Сеттер поля sum с уведомлением слушателей (для изменения реквизитов стейта вне основного редактирования информации, например в другом окне)
  void setSum(double value) {
    sum = value;    price = quantity == 0 ? 0 : price = sum / quantity;
    notifyListeners();
  }

  // Получить модель из текущего состояния провайдера
  PurchaseDocumentsModel stateToModel() {
    final purchaseDocumentsModel = PurchaseDocumentsModel(
      id: id,
      deleteMark: deleteMark,
      date: date,
      organization: organization,
      customer: customer,
      product: product,
      quantity: quantity,
      price: price,
      sum: sum,
    );

    return purchaseDocumentsModel;
  }

  // Получить значение поля по его текстовому наименованию
  dynamic getField(String fieldName) {
    switch (fieldName) {
      case 'date':
        return date;
      case 'organization':
        return organization;
      case 'customer':
        return customer;
      case 'product':
        return product;
      case 'quantity':
        return quantity;
      case 'price':
        return price;
      case 'sum':
        return sum;
      default:
        return null;
    }
  }
     
  // Установить значение поля по его текстовому наименованию и уведомить слушателей
  void setField({required String fieldName, dynamic value}) {
    switch (fieldName) {
      case 'deleteMark':
        deleteMark = value;
      case 'date':
        setDate(value);
      case 'organization':
        setOrganization(value);
      case 'customer':
        setCustomer(value);
      case 'product':
        setProduct(value);
      case 'quantity':
        setQuantity(value);
      case 'price':
        setPrice(value);
      case 'sum':
        setSum(value);        
      default:
        return;
    }

    notifyListeners();
  }

}
