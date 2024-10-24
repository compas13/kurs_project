import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../shared/presentation/state/provider_app_theme.dart';
import '../../../../../../shared/presentation/widgets/item_of_bottom_sheet_menu.dart';
import '../state/counteragents_state.dart';

class CounteragentsBottomSheet extends StatelessWidget {
  final CounteragentsState state;

  const CounteragentsBottomSheet({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    var appTheme = context.watch<ProviderAppTheme>();
    return Container(
      height: 80,
      decoration: BoxDecoration(color: appTheme.colorTheme.mainAppBackground),
      child: Column(
        children: [
          const SizedBox(height: 16),
          ItemOfBottomSheetMenu(
            state: state,
            title: 'Заполнить по ИНН',
            type: 'setFieldsFromINN',
          ),
        ],
      ),
    );
  }
}