import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

import '../../../../../../core/app_sizes.dart';
import '../../../../../../shared/presentation/state/provider_app_theme.dart';
import '../../data/models/purchase_documents_model.dart';
import '../../../../../../shared/data/string_functions/format_number.dart';

class PurchaseDocumentsCardInList extends StatelessWidget {
  final PurchaseDocumentsModel purchaseDocumentsModel;
  final String viewMode;

  const PurchaseDocumentsCardInList({super.key, required this.purchaseDocumentsModel, required this.viewMode});

  @override
  Widget build(BuildContext context) {
    var appTheme = context.watch<ProviderAppTheme>();

    return GestureDetector(
      onTap: () {
        if (viewMode == 'select') {
          // Если режим выбора, то при выборе надо вернуть модель
          context.pop(purchaseDocumentsModel);
        } else {
          // Иначе открываем экран элемента
          context.push(
            '/purchaseDocumentsScreenElement',
            extra: {
              'purchaseDocumentsModel': purchaseDocumentsModel,
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
                '№${purchaseDocumentsModel.id} от ${DateFormat('dd.MM.yyyy').format(purchaseDocumentsModel.date)}',
                style: TextStyle(
                  fontSize: 14,
                  color: appTheme.colorTheme.inputFieldData,
                ),
              ),
              const Spacer(),
              Text(
                '₽\u200B\u200B\u200B\u200B\u200B',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: appTheme.colorTheme.inputFieldIconLeft,
                ),
              ),
              Text(
                formatNumber(purchaseDocumentsModel.sum, 2),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                  color: appTheme.colorTheme.inputFieldData,
                ),
              ),
              const SizedBox(width: 8),
              Icon(Icons.arrow_forward_ios_rounded, color: appTheme.colorTheme.inputFieldIconRight),
              const SizedBox(width: 16),
            ],
          ),
        ),
      ),
    );
  }
}