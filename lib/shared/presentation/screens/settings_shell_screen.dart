import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/app_sizes.dart';
import '../state/provider_app_theme.dart';
import '../widgets/switch_widget_change_color_theme.dart';

class SettingsShellScreen extends StatelessWidget {
  const SettingsShellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var appTheme = context.watch<ProviderAppTheme>();
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InputFieldSetting(
            lable: "Ночной режим",
            iconLeft: Icon(
              Icons.calendar_month,
              size: AppSizes.sizeIconInFieldData,
              color: appTheme.colorTheme.inputFieldIconLeft,
            ),
          ),
        ],
      ),
    );
  }
}

class InputFieldSetting extends StatelessWidget {
  final String lable;
  final Widget iconLeft; // иконка слева

  const InputFieldSetting({super.key, required this.lable, required this.iconLeft});

  @override
  Widget build(BuildContext context) {
    var appTheme = context.watch<ProviderAppTheme>();

    return Padding(
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
              child: iconLeft,
            ),
            const SizedBox(width: 16),
            Text(
              lable,
              style: TextStyle(
                fontSize: 14,
                color: appTheme.colorTheme.inputFieldLabel,
              ),
            ),
            const Spacer(),
            SwitchWidgetChangeColorTheme(
              state: appTheme,
            ),
            const SizedBox(width: 16),
          ],
        ),
      ),
    );
  }
}
