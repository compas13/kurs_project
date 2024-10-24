import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/app_color_themes.dart';
import '../state/provider_app_theme.dart';

class SwitchWidgetSettings extends StatefulWidget {
  final String nameData;
  final dynamic state; // провайдер appTheme или appSettings

  const SwitchWidgetSettings({super.key, required this.nameData, required this.state});

  @override
  State<SwitchWidgetSettings> createState() => _SwitchWidgetSettingsState();
}

class _SwitchWidgetSettingsState extends State<SwitchWidgetSettings> {
  late bool isSwitched; // переменная состояния

  @override
  void initState() {
    super.initState();

    if (widget.state is ProviderAppTheme) {
      isSwitched = widget.state.colorTheme == AppThemes.darkTheme ? true : false;
    }
  }

  @override
  Widget build(BuildContext context) {
    var appTheme = context.watch<ProviderAppTheme>();
  
    return Switch(
      value: isSwitched,
      trackOutlineColor: WidgetStateProperty.all(appTheme.colorTheme.switchOffSwitch), // цвет обводки (вкл и выкл)
      activeColor: appTheme.colorTheme.switchOnSwitch, // цвет перключателя (ВКЛ)
      activeTrackColor: appTheme.colorTheme.switchOnBackground, // цвет фона ВКЛ
      inactiveThumbColor: appTheme.colorTheme.switchOffSwitch, // цвет перключателя (выкл)
      inactiveTrackColor: appTheme.colorTheme.switchOffBackground, // цвет фона ВЫКЛ
      
      onChanged: (value) {
        setState(() {
          isSwitched = value; // Обновляем состояние переключателя
          if (widget.state is ProviderAppTheme) {
            if (value) {
              widget.state.setColorTheme(AppThemes.darkTheme);
            } else {
              widget.state.setColorTheme(AppThemes.lightTheme);
            }
          }
        });
      },
    );
  }
}