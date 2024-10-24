import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../../../core/app_sizes.dart';
import '../../../../../../shared/presentation/state/provider_app_theme.dart';
import '../../data/models/counteragents_model.dart';


class CounteragentsCardInList extends StatelessWidget {
  final CounteragentsModel counteragentsModel;
  final String viewMode;

  const CounteragentsCardInList({super.key, required this.counteragentsModel, required this.viewMode});

  @override
  Widget build(BuildContext context) {
    var appTheme = context.watch<ProviderAppTheme>();

    return GestureDetector(
      onTap: () {
        if (viewMode == 'select') {
          // Если режим выбора, то при выборе надо вернуть модель
          context.pop(counteragentsModel);
        } else {
          // Иначе открываем экран элемента
          context.push(
            '/counteragentsScreenElement',
            extra: {
              'counteragentsModel': counteragentsModel,
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
                counteragentsModel.name,
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