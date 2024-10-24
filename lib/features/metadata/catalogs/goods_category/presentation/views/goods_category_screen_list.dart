import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../../../shared/presentation/state/provider_app_theme.dart';
import '../../data/models/goods_category_model.dart';
import '../widgets/goods_category_list_view.dart';

class GoodsCategoryScreenList extends StatelessWidget {
  final String viewMode; //list - форма списка/ select - форма выбора
  const GoodsCategoryScreenList({super.key, required this.viewMode});

  @override
  Widget build(BuildContext context) {
    var appTheme = context.watch<ProviderAppTheme>();
    
    return Scaffold(
      backgroundColor: appTheme.colorTheme.mainAppBackground,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appTheme.colorTheme.appBarBackground,
        title: Text(
          'Товарные категории', 
          style: TextStyle(
            color: appTheme.colorTheme.appBarTitle,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: appTheme.colorTheme.appBarIcons),
          onPressed: () {
            Navigator.of(context).pop(GoodsCategoryModel()); // Закрыть текущую страницу, вернув пустую модель
          },
        ),
        actions: [
          // Открыть страницу элемента для создания новой группы расходов
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(
                '/goodsCategoryScreenElement',
                extra: {
                  'goodsCategoryModel': GoodsCategoryModel(),
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
        child: GoodsCategoryListView(
          viewMode: viewMode,
        ),
      ),
    );
  }
}