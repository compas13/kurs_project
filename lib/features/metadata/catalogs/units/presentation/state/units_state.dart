import 'package:flutter/material.dart';
import '../../data/models/units_model.dart';


class UnitsState extends ChangeNotifier {
  int id = 0;
  bool deleteMark = false; // пометка на удаление
  bool modified = false; // состояние элемента модифицировано
  bool needInit = true; // состояние провайдера предполагает инициализацию. Назначается true во время первой инициализации
  final TextEditingController nameTextController = TextEditingController();

  // Инициализация состояния из переданной модели
  void initProvider(UnitsModel unitsModel) {
    if (needInit) {
      if (unitsModel.id != 0) {
        needInit = false;
        id = unitsModel.id;
        nameTextController.text = unitsModel.name;
        
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
  UnitsModel stateToModel() {
    final unitsModel = UnitsModel(
      id: id,
      deleteMark: deleteMark,
      name: nameTextController.text,
    );

    return unitsModel;
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
