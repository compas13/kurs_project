import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../shared/presentation/state/provider_app_theme.dart';
import '../state/calc_state.dart';

class CalcDisplay extends StatelessWidget {
  const CalcDisplay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final calcState = context.watch<CalcState>();
    var appTheme = context.watch<ProviderAppTheme>();
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: appTheme.colorTheme.inputFieldBackground,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          calcState.currentText,
          style: TextStyle(color: appTheme.colorTheme.inputFieldData),
        ),
      ),
    );
  }
}