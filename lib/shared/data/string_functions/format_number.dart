String formatNumber(double number, int decimalPlaces) {
  if (number % 1 == 0) {
    // Если дробная часть равна 0
    return number.toInt().toString(); // Возвращаем как целое число
  } else {
    // Если дробная часть не равна 0
    return number.toStringAsFixed(decimalPlaces); // Форматируем до двух знаков после запятой
  }
}