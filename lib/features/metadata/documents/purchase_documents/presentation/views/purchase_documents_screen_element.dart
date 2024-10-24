import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

import '../../data/models/purchase_documents_model.dart';
import '../state/purchase_documents_state.dart';

import '../../../../../../core/app_sizes.dart';
import '../../../../../../shared/presentation/state/provider_app_theme.dart';
import '../../../../../../shared/presentation/widgets/input_field.dart';
import '../../../../../../shared/presentation/widgets/save_bar.dart';import '../../../../../../shared/presentation/widgets/custom_divider.dart';

 
// [ШАБЛОН: Импорт _page_view_state.dart, если есть страницы]
// [ШАБЛОН: Импорт toggle_page_view.dart, если есть страницы]
 

class PurchaseDocumentsScreenElement extends StatelessWidget {
  final PurchaseDocumentsModel purchaseDocumentsModel;
  const PurchaseDocumentsScreenElement({super.key, required this.purchaseDocumentsModel});

  @override
  Widget build(BuildContext context) {
    // [ШАБЛОН: подписка на провайдер страниц, если есть страницы] 
    var appTheme = context.watch<ProviderAppTheme>();
    var purchaseDocumentsState = context.watch<PurchaseDocumentsState>();
    purchaseDocumentsState.initProvider(purchaseDocumentsModel); // Инициализируем провайдер, сохраняющий состояние страницы. Инициализация не вызывает уведомление слушателей

    return Scaffold(
      backgroundColor: appTheme.colorTheme.mainAppBackground,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appTheme.colorTheme.appBarBackground,
        title: Text(
          purchaseDocumentsModel.id == 0 ? 'Новый' : '№${purchaseDocumentsModel.id} от ${DateFormat('dd.MM.yyyy').format(purchaseDocumentsModel.date)}', 
          style: TextStyle(
            color: appTheme.colorTheme.appBarTitle,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: appTheme.colorTheme.appBarIcons),
          onPressed: () {
            Navigator.of(context).pop(PurchaseDocumentsModel()); // Закрыть текущую страницу, вернув пустую модель
            purchaseDocumentsState.deleteProvider();
          },
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        child: Column(
          children: [
            // [ШАБЛОН: TogglePageView(), если есть страницы]
            SaveBar(state: purchaseDocumentsState),
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
              lable: 'Дата',
              nameData: 'date',
              state: purchaseDocumentsState,
              iconLeft: Icon(
                Icons.calendar_month,
                size: AppSizes.sizeIconInFieldData,
                color: appTheme.colorTheme.inputFieldIconLeft,
              ),
            ),            
            const CustomDivider(),
            InputField(
              lable: 'Организация',
              nameData: 'organization',
              state: purchaseDocumentsState,
              iconLeft: Icon(
                Icons.person,
                size: AppSizes.sizeIconInFieldData,
                color: appTheme.colorTheme.inputFieldIconLeft,
              ),
            ),            
            const CustomDivider(),
            InputField(
              lable: 'Покупатель',
              nameData: 'customer',
              state: purchaseDocumentsState,
              iconLeft: Icon(
                Icons.group,
                size: AppSizes.sizeIconInFieldData,
                color: appTheme.colorTheme.inputFieldIconLeft,
              ),
            ),            
            const CustomDivider(),
            InputField(
              lable: 'Товар',
              nameData: 'product',
              state: purchaseDocumentsState,
              iconLeft: Icon(
                Icons.shopping_cart,
                size: AppSizes.sizeIconInFieldData,
                color: appTheme.colorTheme.inputFieldIconLeft,
              ),
            ),            
            const CustomDivider(),
            InputField(
              lable: 'Количество',
              nameData: 'quantity',
              state: purchaseDocumentsState,
              iconLeft: Icon(
                Icons.attach_money,
                size: AppSizes.sizeIconInFieldData,
                color: appTheme.colorTheme.inputFieldIconLeft,
              ),
            ),            
            const CustomDivider(),
            InputField(
              lable: 'Цена',
              nameData: 'price',
              state: purchaseDocumentsState,
              iconLeft: Icon(
                Icons.attach_money,
                size: AppSizes.sizeIconInFieldData,
                color: appTheme.colorTheme.inputFieldIconLeft,
              ),
            ),            
            const CustomDivider(),
            InputField(
              lable: 'Сумма',
              nameData: 'sum',
              state: purchaseDocumentsState,
              iconLeft: Icon(
                Icons.attach_money,
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