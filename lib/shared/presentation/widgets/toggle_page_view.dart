import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import '../state/provider_app_theme.dart';

class ToggleViewPage extends StatefulWidget {
  final List<String> listPages; // массив с заголовками страниц
  final dynamic pageViewState; // контроллер страниц, которые мы тут будем переключать

  const ToggleViewPage({super.key, required this.listPages, required this.pageViewState});

  @override
  State<ToggleViewPage> createState() => _ToggleViewPageState();
}

class _ToggleViewPageState extends State<ToggleViewPage> {
  // Переменная для хранения текущего значения переключателя
  late String currentSwitchValue;

  @override
  void initState() {
    super.initState();
    // Инициализируем переменную значением из списка
    currentSwitchValue = widget.listPages.isNotEmpty ? widget.listPages[0] : '';
  }

  @override
  Widget build(BuildContext context) {
    var appTheme = context.watch<ProviderAppTheme>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: AnimatedToggleSwitch<String>.size(
        inactiveOpacity: 1.0,
        height: 28,
        current: currentSwitchValue,
        values: widget.listPages,
        iconOpacity: 1,
        indicatorSize: const Size.fromWidth(200),
        customIconBuilder: (context, local, global) => Text(
          local.value,
          style: TextStyle(
            color: Color.lerp(
              appTheme.colorTheme.appBarIcons, // неактивный текст
              appTheme.colorTheme.appBarTitle, //активный текст
              local.animationValue,
            ),
          ),
        ),
        borderWidth: 2,
        iconAnimationType: AnimationType.onHover,
        style: ToggleStyle(
          // цвет фона
          backgroundColor: Colors.transparent,
          indicatorBorder: Border.all(
            // цвет границы ползунка
            //color: Colors.transparent,
            // толщина границы ползунка
            width: 1,
          ),
          //цвет ползунка
          indicatorColor: appTheme.colorTheme.switchOffSwitch,
          //цвет границы всего переключателя
          //borderColor: AppColors.bgColor1,
          borderColor: appTheme.colorTheme.switchOffSwitch,
          borderRadius: BorderRadius.circular(20),
        ),
        selectedIconScale: 1,
        positionListener: (position) {},
        onChanged: (value) {
          setState(() {
            currentSwitchValue = value;
            widget.pageViewState.goToPage(widget.listPages.indexOf(value)); // по текстовому значению определяем индекс массива и отправляем контроллер на эту страницу
          });
        },
      ),
    );
  }
}
