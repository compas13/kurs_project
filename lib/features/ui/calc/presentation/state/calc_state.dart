import 'package:flutter/material.dart';

class CalcState extends ChangeNotifier {
  String previousSymbol = ''; // предыдущий символ
  String currentSymbol = ''; // только что введенный символ
  String currentText = '0'; // текст, который отображается на дисплее калькулятора
  String currentOperation = '';
  String textBeforeOperation = '';
  double calcValue = 0; //текущее значение калькулятора

  void setCurrentText(String value) {
    currentText = value;
    notifyListeners();
  }

  void setCurrentSymbol(String value) {
    currentSymbol = value;
  }

  void setCurrentOperation(String value) {
    if (value == '+' || value == '-' || value == '/' || value == 'x') {
      currentOperation = value;
      notifyListeners();
    }
  }

  void setPreviousSymbol(String value) {
    previousSymbol = value;
    notifyListeners();
  }

  void setTextBeforeOperation(String value) {
    if (value == '+' || value == '-' || value == '/' || value == 'x') {
      textBeforeOperation = currentText;
      notifyListeners();
    }
  }

  void clear() {
    previousSymbol = '';
    currentText = '0';
    currentOperation = '';
    textBeforeOperation = '';
    calcValue = 0;

    notifyListeners();
  }

  void resultAndClear() {
    previousSymbol = '';
    currentOperation = '';
    textBeforeOperation = '';
    calcValue = 0;

    notifyListeners();
  }
}