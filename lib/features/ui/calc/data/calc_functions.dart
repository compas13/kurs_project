import '../../../../shared/data/string_functions/format_number.dart';
import '../presentation/state/calc_state.dart';

class CalcFunctions {
  void setNewCurrentText({required CalcState calcState}) {
    var symbol = calcState.currentSymbol;
    var currentText = calcState.currentText;
    var previousSymbol = calcState.previousSymbol;
    var currentOperation = calcState.currentOperation;
    var textBeforeOperation = calcState.textBeforeOperation;

    // пришел символ сброса
    if (symbol == 'C') {
      calcState.clear();
    }

    // если пришла точка
    if (symbol == '.') {
      if (currentText.contains('.')) {
        return;
      } else {
        calcState.previousSymbol = symbol;
        calcState.setCurrentText(currentText + symbol);
      }
    }

    // если пришел символ - число
    if (symbol == '0' || symbol == '1' || symbol == '2' || symbol == '3' || symbol == '4' || symbol == '5' || symbol == '6' || symbol == '7' || symbol == '8' || symbol == '9') {
      if (calcState.currentText == '0' || previousSymbol == '+' || previousSymbol == '-' || previousSymbol == 'x' || previousSymbol == '/') {
        calcState.previousSymbol = symbol;
        calcState.setCurrentText(symbol);
      } else {
        calcState.previousSymbol = symbol;
        calcState.setCurrentText(currentText + symbol);
      }

      // на этом этапе на дисплее калькулятора должно быть число, сохраним его в стейте
      calcState.calcValue = double.parse(calcState.currentText);
    }

    if (symbol == '+' || symbol == '-' || symbol == '/' || symbol == 'x') {
      calcState.textBeforeOperation = calcState.currentText;
      calcState.currentOperation = symbol;

      // если на вход пришел знак операции, а у нас уже заполнена текущая операция и значение до операции, то данный знак должен сработать как символ РАВНО
      if (currentOperation != '' && textBeforeOperation != '') {
        calcState.previousSymbol = symbol;
        calcState.setCurrentText(formatNumber(exeOperation(textBeforeOperation, currentOperation, currentText), 2));

        // на этом этапе на дисплее калькулятора должно быть число, сохраним его в стейте
        calcState.calcValue = double.parse(calcState.currentText);
      } else {
        calcState.previousSymbol = symbol;
      }
    }

    if (symbol == '=') {
      if (currentOperation != '' && textBeforeOperation != '') {
        var result = exeOperation(textBeforeOperation, currentOperation, currentText);
        calcState.resultAndClear();
        calcState.setCurrentText(formatNumber(result, 2));

        // на этом этапе на дисплее калькулятора должно быть число, сохраним его в стейте
        calcState.calcValue = double.parse(calcState.currentText);
      }
    }
  }

  double exeOperation(String operator1, String operation, String operator2) {
    switch (operation) {
      case '+':
        return (double.parse(operator1) + double.parse(operator2));
      case '-':
        return (double.parse(operator1) - double.parse(operator2));
      case 'x':
        return (double.parse(operator1) * double.parse(operator2));
      case '/':
        return (double.parse(operator1) / double.parse(operator2));
      default:
        return 0;
    }
  }
}