import 'package:flutter/material.dart';
import '../../data/models/counteragents_model.dart';


class CounteragentsState extends ChangeNotifier {
  int id = 0;
  bool deleteMark = false; // пометка на удаление
  bool modified = false; // состояние элемента модифицировано
  bool needInit = true; // состояние провайдера предполагает инициализацию. Назначается true во время первой инициализации
  final TextEditingController nameTextController = TextEditingController();
  final TextEditingController innTextController = TextEditingController();
  final TextEditingController kppTextController = TextEditingController();
  final TextEditingController adressTextController = TextEditingController();

  // Инициализация состояния из переданной модели
  void initProvider(CounteragentsModel counteragentsModel) {
    if (needInit) {
      if (counteragentsModel.id != 0) {
        needInit = false;
        id = counteragentsModel.id;
        nameTextController.text = counteragentsModel.name;
        innTextController.text = counteragentsModel.inn;
        kppTextController.text = counteragentsModel.kpp;
        adressTextController.text = counteragentsModel.adress;
        
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
    innTextController.text = '';
    kppTextController.text = '';
    adressTextController.text = '';
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
  CounteragentsModel stateToModel() {
    final counteragentsModel = CounteragentsModel(
      id: id,
      deleteMark: deleteMark,
      name: nameTextController.text,
      inn: innTextController.text,
      kpp: kppTextController.text,
      adress: adressTextController.text,
    );

    return counteragentsModel;
  }

  // Получить значение поля по его текстовому наименованию
  dynamic getField(String fieldName) {
    switch (fieldName) {
      case 'nameTextController':
        return nameTextController;
      case 'innTextController':
        return innTextController;
      case 'kppTextController':
        return kppTextController;
      case 'adressTextController':
        return adressTextController;
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
      case 'inn':
        innTextController.text = value;
      case 'kpp':
        kppTextController.text = value;
      case 'adress':
        adressTextController.text = value;        
      default:
        return;
    }

    notifyListeners();
  }
     
  // Надо уничтожить контроллеры текстовых полей
  @override
  void dispose() { 
    nameTextController.dispose();
    innTextController.dispose();
    kppTextController.dispose();
    adressTextController.dispose();
    super.dispose();
  }
}
