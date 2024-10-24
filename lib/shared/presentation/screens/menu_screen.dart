import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/app_sizes.dart';
import '../state/provider_app_theme.dart';
import '../widgets/item_of_menu.dart'; 
import '../widgets/custom_divider.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var appTheme = context.watch<ProviderAppTheme>();
    return Scaffold(
      backgroundColor: appTheme.colorTheme.mainAppBackground,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appTheme.colorTheme.appBarBackground,
        title: Text(
          'Меню',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w300,
            fontSize: 24,
            color: appTheme.colorTheme.appBarTitle,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: appTheme.colorTheme.appBarIcons), // Назад
          onPressed: () {
            Navigator.of(context).pop(); // Закрыть текущую страницу
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            ItemOfMenu(
              title: 'Организации',
              path: '/organizationsList/list',
              iconLeft: Icon(Icons.group, size: AppSizes.sizeIconInFieldData, color: appTheme.colorTheme.inputFieldIconLeft),
            ),
            const CustomDivider(),
            ItemOfMenu(
              title: 'Контрагенты',
              path: '/counteragentsList/list',
              iconLeft: Icon(Icons.group, size: AppSizes.sizeIconInFieldData, color: appTheme.colorTheme.inputFieldIconLeft),
            ),
            const CustomDivider(),
            ItemOfMenu(
              title: 'Товары',
              path: '/productsList/list',
              iconLeft: Icon(Icons.shopping_cart, size: AppSizes.sizeIconInFieldData, color: appTheme.colorTheme.inputFieldIconLeft),
            ),
            const CustomDivider(),
            ItemOfMenu(
              title: 'Товарные категории',
              path: '/goodsCategoryList/list',
              iconLeft: Icon(Icons.folder, size: AppSizes.sizeIconInFieldData, color: appTheme.colorTheme.inputFieldIconLeft),
            ),
            const CustomDivider(),
            ItemOfMenu(
              title: 'Единицы измерения',
              path: '/unitsList/list',
              iconLeft: Icon(Icons.description, size: AppSizes.sizeIconInFieldData, color: appTheme.colorTheme.inputFieldIconLeft),
            ),
          ],
        ),
      ),
    );
  }
}