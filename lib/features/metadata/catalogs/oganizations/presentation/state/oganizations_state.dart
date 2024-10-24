﻿import 'package:flutter/material.dart';
import '../../data/models/oganizations_model.dart';


class OganizationsState extends ChangeNotifier {
  int id = 0;
  bool deleteMark = false; // пометка на удаление
  bool modified = false; // состояние элемента модифицировано
  bool needInit = true; // состояние провайдера предполагает инициализацию. Назначается true во время первой инициализации
  final TextEditingController nameTextController = TextEditingController();
  final TextEditingController innTextController = TextEditingController();
  final TextEditingController kppTextController = TextEditingController();
  final TextEditingController adressTextController = TextEditingController();

  // Инициализация состояния из переданной модели
  void initProvider(OganizationsModel oganizationsModel) {
    if (needInit) {
      if (oganizationsModel.id != 0) {
        needInit = false;
        id = oganizationsModel.id;
        nameTextController.text = oganizationsModel.name;
        innTextController.text = oganizationsModel.inn;
        kppTextController.text = oganizationsModel.kpp;
        adressTextController.text = oganizationsModel.adress;
        
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
  OganizationsModel stateToModel() {
    final oganizationsModel = OganizationsModel(
      id: id,
      deleteMark: deleteMark,
      name: nameTextController.text,
      inn: innTextController.text,
      kpp: kppTextController.text,
      adress: adressTextController.text,
    );

    return oganizationsModel;
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
  void setField({required String fieldName, required dynamic state, dynamic value}) {
    switch (fieldName) {
      case 'deleteMark':
        state.deleteMark = value;
      case 'name':
        state.nameTextController.text = value;
      case 'inn':
        state.innTextController.text = value;
      case 'kpp':
        state.kppTextController.text = value;
      case 'adress':
        state.adressTextController.text = value;        
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
