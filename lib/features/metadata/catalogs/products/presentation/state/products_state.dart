import 'package:flutter/material.dart';
import '../../data/models/products_model.dart';
import '../../../units/data/models/units_model.dart';
import '../../../goods_category/data/models/goods_category_model.dart';

class ProductsState extends ChangeNotifier {
  int id = 0;
  bool deleteMark = false; // пометка на удаление
  bool modified = false; // состояние элемента модифицировано
  bool needInit = true; // состояние провайдера предполагает инициализацию. Назначается true во время первой инициализации
  final TextEditingController nameTextController = TextEditingController();
  UnitsModel unit = UnitsModel();
  GoodsCategoryModel category = GoodsCategoryModel();
  bool isService = false;

  // Инициализация состояния из переданной модели
  void initProvider(ProductsModel productsModel) {
    if (needInit) {
      if (productsModel.id != 0) {
        needInit = false;
        id = productsModel.id;
        nameTextController.text = productsModel.name;
        unit = productsModel.unit;
        category = productsModel.category;
        isService = productsModel.isService;
        
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
    nameTextController.text = '';
    unit = UnitsModel();
    category = GoodsCategoryModel();
    isService = false;
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

  // Сеттер поля unit с уведомлением слушателей (для изменения реквизитов стейта вне основного редактирования информации, например в другом окне)
  void setUnit(UnitsModel value) {
    unit = value;
    notifyListeners();
  }

  // Сеттер поля category с уведомлением слушателей (для изменения реквизитов стейта вне основного редактирования информации, например в другом окне)
  void setCategory(GoodsCategoryModel value) {
    category = value;
    notifyListeners();
  }

  // Сеттер поля isService с уведомлением слушателей (для изменения реквизитов стейта вне основного редактирования информации, например в другом окне)
  void setIsService(bool value) {
    isService = value;
    notifyListeners();
  }

  // Получить модель из текущего состояния провайдера
  ProductsModel stateToModel() {
    final productsModel = ProductsModel(
      id: id,
      deleteMark: deleteMark,
      name: nameTextController.text,
      unit: unit,
      category: category,
      isService: isService,
    );

    return productsModel;
  }

  // Получить значение поля по его текстовому наименованию
  dynamic getField(String fieldName) {
    switch (fieldName) {
      case 'nameTextController':
        return nameTextController;
      case 'unit':
        return unit;
      case 'category':
        return category;
      case 'isService':
        return isService;
      default:
        return null;
    }
  }
     
  // Установить значение поля по его текстовому наименованию и уведомить слушателей
  void setField({required String fieldName, dynamic value}) {
    switch (fieldName) {
      case 'deleteMark':
        deleteMark = value;
      case 'name':
        nameTextController.text = value;
      case 'unit':
        setUnit(value);
      case 'category':
        setCategory(value);
      case 'isService':
        setIsService(value);        
      default:
        return;
    }

    notifyListeners();
  }
     
  // Надо уничтожить контроллеры текстовых полей
  @override
  void dispose() { 
    nameTextController.dispose();
    super.dispose();
  }
}
