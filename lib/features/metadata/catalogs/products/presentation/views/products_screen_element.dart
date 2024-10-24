import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/models/products_model.dart';
import '../state/products_state.dart';

import '../../../../../../core/app_sizes.dart';
import '../../../../../../shared/presentation/state/provider_app_theme.dart';
import '../../../../../../shared/presentation/widgets/input_field.dart';
import '../../../../../../shared/presentation/widgets/save_bar.dart';import '../../../../../../shared/presentation/widgets/custom_divider.dart';

 
// [ШАБЛОН: Импорт _page_view_state.dart, если есть страницы]
// [ШАБЛОН: Импорт toggle_page_view.dart, если есть страницы]
 

class ProductsScreenElement extends StatelessWidget {
  final ProductsModel productsModel;
  const ProductsScreenElement({super.key, required this.productsModel});

  @override
  Widget build(BuildContext context) {
    // [ШАБЛОН: подписка на провайдер страниц, если есть страницы] 
    var appTheme = context.watch<ProviderAppTheme>();
    var productsState = context.watch<ProductsState>();
    productsState.initProvider(productsModel); // Инициализируем провайдер, сохраняющий состояние страницы. Инициализация не вызывает уведомление слушателей

    return Scaffold(
      backgroundColor: appTheme.colorTheme.mainAppBackground,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appTheme.colorTheme.appBarBackground,
        title: Text(
          productsModel.id == 0 ? 'Новый' : productsModel.name, 
          style: TextStyle(
            color: appTheme.colorTheme.appBarTitle,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: appTheme.colorTheme.appBarIcons),
          onPressed: () {
            Navigator.of(context).pop(ProductsModel()); // Закрыть текущую страницу, вернув пустую модель
            productsState.deleteProvider();
          },
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        child: Column(
          children: [
            // [ШАБЛОН: TogglePageView(), если есть страницы]
            SaveBar(state: productsState),
          ],
        ),
      ),
      body: PageView(
        // [ШАБЛОН: контроллер страниц, если есть страницы]
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
            InputField(
              lable: 'Наименование',
              nameData: 'nameTextController',
              state: productsState,
              iconLeft: Icon(
                Icons.description,
                size: AppSizes.sizeIconInFieldData,
                color: appTheme.colorTheme.inputFieldIconLeft,
              ),
            ),            
            const CustomDivider(),
            InputField(
              lable: 'Ед. изм.',
              nameData: 'unit',
              state: productsState,
              iconLeft: Icon(
                Icons.description,
                size: AppSizes.sizeIconInFieldData,
                color: appTheme.colorTheme.inputFieldIconLeft,
              ),
            ),            
            const CustomDivider(),
            InputField(
              lable: 'Категория',
              nameData: 'category',
              state: productsState,
              iconLeft: Icon(
                Icons.folder,
                size: AppSizes.sizeIconInFieldData,
                color: appTheme.colorTheme.inputFieldIconLeft,
              ),
            ),            
            const CustomDivider(),
            InputField(
              lable: 'Это услуга',
              nameData: 'isService',
              state: productsState,
              iconLeft: Icon(
                Icons.person,
                size: AppSizes.sizeIconInFieldData,
                color: appTheme.colorTheme.inputFieldIconLeft,
              ),
            ),                            
              ],
            ),
          ),
          // [ШАБЛОН: виджеты дополнительных страниц, если есть страницы]
        ],
      ),
    );
  }
}