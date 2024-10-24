import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../shared/presentation/state/provider_app_theme.dart';
import '../state/calc_state.dart';

class SetCalcValueButton extends StatelessWidget {
  final dynamic state; // стейт экрана, где мы устанавливаем значение
  final String nameData; // имя поле, в которое мы устанавливаем значение
  const SetCalcValueButton({super.key, required this.state, required this.nameData});

  @override
  Widget build(BuildContext context) {
    final calcState = context.read<CalcState>();
    var appTheme = context.watch<ProviderAppTheme>();
    return GestureDetector(
      onTap: () {
        state.setField(fieldName: nameData, value: calcState.calcValue);
        Navigator.pop(context);
      },
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          color: appTheme.colorTheme.buttonFullBackground,
        ),
        child: Center(
          child: Text(
            'Ok',
            style: TextStyle(
              color: appTheme.colorTheme.buttonFullAccentText,
            ),
          ),
        ),
      ),
    );
  }
}