﻿import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../../../shared/presentation/state/provider_app_theme.dart';
import '../../data/models/units_model.dart';
import '../widgets/units_list_view.dart';

class UnitsScreenList extends StatelessWidget {
  final String viewMode; //list - форма списка/ select - форма выбора
  const UnitsScreenList({super.key, required this.viewMode});

  @override
  Widget build(BuildContext context) {
    var appTheme = context.watch<ProviderAppTheme>();
    
    return Scaffold(
      backgroundColor: appTheme.colorTheme.mainAppBackground,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appTheme.colorTheme.appBarBackground,
        title: Text(
          'Единицы измерения', 
          style: TextStyle(
            color: appTheme.colorTheme.appBarTitle,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: appTheme.colorTheme.appBarIcons),
          onPressed: () {
            Navigator.of(context).pop(UnitsModel()); // Закрыть текущую страницу, вернув пустую модель
          },
        ),
        actions: [
          // Открыть страницу элемента для создания новой группы расходов
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(
                '/unitsScreenElement',
                extra: {
                  'unitsModel': UnitsModel(),
                },
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Icon(Icons.add, color: appTheme.colorTheme.appBarIcons),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: UnitsListView(
          viewMode: viewMode,
        ),
      ),
    );
  }
}