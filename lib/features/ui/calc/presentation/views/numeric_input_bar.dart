import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../shared/data/string_functions/format_number.dart';

import '../state/calc_state.dart';
import '../widgets/calc_button.dart';
import '../widgets/calc_display.dart';
import '../widgets/set_calc_value_button.dart';

class NumericInputBar extends StatelessWidget {
  final dynamic state;
  final String nameData;

  const NumericInputBar({super.key, required this.state, required this.nameData});

  @override
  Widget build(BuildContext context) {
    final calcState = context.read<CalcState>();
    const double heightButton = 40;
    calcState.currentText = formatNumber(state.getField(nameData), 2);
    calcState.calcValue = state.getField(nameData);

    return SizedBox(
      height: 304,
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          const Row(
            children: [
              Expanded(child: CalcDisplay()),
              SizedBox(
                width: heightButton,
                child: CalcButton(
                  caption: 'C',
                  height: heightButton,
                ),
              ),
            ],
          ),
          SetCalcValueButton(state: state, nameData: nameData),
          //---button Ok
          const Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    CalcButton(caption: '-', height: heightButton),
                    CalcButton(caption: '/', height: heightButton),
                    CalcButton(caption: '*', height: heightButton),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    CalcButton(caption: '1', height: heightButton),
                    CalcButton(caption: '4', height: heightButton),
                    CalcButton(caption: '7', height: heightButton),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    CalcButton(caption: '2', height: heightButton),
                    CalcButton(caption: '5', height: heightButton),
                    CalcButton(caption: '8', height: heightButton),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    CalcButton(caption: '3', height: heightButton),
                    CalcButton(caption: '6', height: heightButton),
                    CalcButton(caption: '9', height: heightButton),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    CalcButton(caption: '+', height: heightButton),
                    CalcButton(caption: '=', height: heightButton * 2 + 8),
                  ],
                ),
              ),
            ],
          ),
          const Row(
            children: [
              Expanded(flex: 1, child: CalcButton(caption: '.', height: heightButton)),
              Expanded(flex: 3, child: CalcButton(caption: '0', height: heightButton)),
              Expanded(flex: 1, child: CalcButton(caption: '<-', height: heightButton)),
            ],
          ),
        ],
      ),
    );
  }
}