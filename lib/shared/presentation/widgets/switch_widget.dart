import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../state/provider_app_theme.dart'; 
                      
class SwitchWidget extends StatefulWidget {
  final String nameData;
  final dynamic state; // провайдер элемента

  const SwitchWidget({super.key, required this.nameData, required this.state});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  late bool isSwitched; // переменная состояния

  @override
  void initState() {
    super.initState();
    isSwitched = widget.state.getField(widget.nameData); // инициализируем переменную значением из провайдера
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
          widget.state.setField(
            fieldName: widget.nameData,
            value: value,
          ); // Установим переменную стейта и уведомим слушателей
        });
      },
    );
  }
}