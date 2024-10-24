import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../../../core/app_sizes.dart';
import '../../../../../../shared/presentation/state/provider_app_theme.dart';
import '../../data/models/units_model.dart';


class UnitsCardInList extends StatelessWidget {
  final UnitsModel unitsModel;
  final String viewMode;

  const UnitsCardInList({super.key, required this.unitsModel, required this.viewMode});

  @override
  Widget build(BuildContext context) {
    var appTheme = context.watch<ProviderAppTheme>();

    return GestureDetector(
      onTap: () {
        if (viewMode == 'select') {
          // Если режим выбора, то при выборе надо вернуть модель
          context.pop(unitsModel);
        } else {
          // Иначе открываем экран элемента
          context.push(
            '/unitsScreenElement',
            extra: {
              'unitsModel': unitsModel,
            },
          );
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 1),
        child: Container(
          height: 48,
          decoration: BoxDecoration(color: appTheme.colorTheme.inputFieldBackground),
          child: Row(
            children: [
              const SizedBox(width: 16),
              Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                  color: appTheme.colorTheme.inputFieldIconLeftBackground,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Icon(Icons.note_add, size: AppSizes.sizeIconInFieldData, color: appTheme.colorTheme.inputFieldIconLeft),
              ),
              const SizedBox(width: 16),
              Text(
                unitsModel.name,
                style: TextStyle(
                  fontSize: 14,
                  color: appTheme.colorTheme.inputFieldData,
                ),
              ),
              const Spacer(),
              Icon(Icons.arrow_forward_ios_rounded, color: appTheme.colorTheme.inputFieldIconRight),
              const SizedBox(width: 16),
            ],
          ),
        ),
      ),
    );
  }
}