import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../shared/presentation/state/provider_app_theme.dart';
import '../../data/calc_functions.dart';
import '../state/calc_state.dart';

class CalcButton extends StatelessWidget {
  final String caption;
  final double height;

  const CalcButton({super.key, required this.caption, required this.height});

  @override
  Widget build(BuildContext context) {
    var calcState = context.read<CalcState>();
    var appTheme = context.watch<ProviderAppTheme>();
    var calcFunctions = CalcFunctions();

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: () {
          calcState.setCurrentSymbol(caption);
          calcFunctions.setNewCurrentText(calcState: calcState);
        },
        child: Container(
          height: height,
          decoration: BoxDecoration(
            color: appTheme.colorTheme.buttonFullBackground,
          ),
          child: Center(
            child: Text(
              caption,
              style: TextStyle(
                color: appTheme.colorTheme.buttonFullText,
              ),
            ),
          ),
        ),
      ),
    );
  }
}