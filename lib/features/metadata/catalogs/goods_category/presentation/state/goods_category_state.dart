import 'package:flutter/material.dart';
import '../../data/models/goods_category_model.dart';


class GoodsCategoryState extends ChangeNotifier {
  int id = 0;
  bool deleteMark = false; // пометка на удаление
  bool modified = false; // состояние элемента модифицировано
  bool needInit = true; // состояние провайдера предполагает инициализацию. Назначается true во время первой инициализации
  final TextEditingController nameTextController = TextEditingController();

  // Инициализация состояния из переданной модели
  void initProvider(GoodsCategoryModel goodsCategoryModel) {
    if (needInit) {
      if (goodsCategoryModel.id != 0) {
        needInit = false;
        id = goodsCategoryModel.id;
        nameTextController.text = goodsCategoryModel.name;
        
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



  // Получить модель из текущего состояния провайдера
  GoodsCategoryModel stateToModel() {
    final goodsCategoryModel = GoodsCategoryModel(
      id: id,
      deleteMark: deleteMark,
      name: nameTextController.text,
    );

    return goodsCategoryModel;
  }

  // Получить значение поля по его текстовому наименованию
  dynamic getField(String fieldName) {
    switch (fieldName) {
      case 'nameTextController':
        return nameTextController;
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
