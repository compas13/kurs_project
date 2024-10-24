import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../state/provider_app_theme.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    var appTheme = context.watch<ProviderAppTheme>();

    return Container(
      height: 1, // Высота разделителя
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            appTheme.colorTheme.mainAppBackground, // Цвет по краям
            appTheme.colorTheme.inputFieldIconLeft, // Цвет посередине
            appTheme.colorTheme.mainAppBackground, // Цвет по краям
          ],
          stops: const [0.0, 0.5, 1.0], // Указываем, где какой цвет должен находиться
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
    );
  }
}