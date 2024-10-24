import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/models/oganizations_model.dart';
import '../state/oganizations_state.dart';

import '../../../../../../core/app_sizes.dart';
import '../../../../../../shared/presentation/state/provider_app_theme.dart';
import '../../../../../../shared/presentation/widgets/input_field.dart';
import '../../../../../../shared/presentation/widgets/save_bar.dart';
 
// [ШАБЛОН: Импорт _page_view_state.dart, если есть страницы]
// [ШАБЛОН: Импорт toggle_page_view.dart, если есть страницы]
import '../widgets/oganizations_bottom_sheet.dart'; 

class OganizationsScreenElement extends StatelessWidget {
  final OganizationsModel oganizationsModel;
  const OganizationsScreenElement({super.key, required this.oganizationsModel});

  @override
  Widget build(BuildContext context) {
    // [ШАБЛОН: подписка на провайдер страниц, если есть страницы] 
    var appTheme = context.watch<ProviderAppTheme>();
    var oganizationsState = context.watch<OganizationsState>();
    oganizationsState.initProvider(oganizationsModel); // Инициализируем провайдер, сохраняющий состояние страницы. Инициализация не вызывает уведомление слушателей

    return Scaffold(
      backgroundColor: appTheme.colorTheme.mainAppBackground,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appTheme.colorTheme.appBarBackground,
        title: Text(
          oganizationsModel.id == 0 ? 'Новый' : oganizationsModel.name, 
          style: TextStyle(
            color: appTheme.colorTheme.appBarTitle,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: appTheme.colorTheme.appBarIcons),
          onPressed: () {
            Navigator.of(context).pop(OganizationsModel()); // Закрыть текущую страницу, вернув пустую модель
            oganizationsState.deleteProvider();
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
            child: IconButton(
              icon: Icon(Icons.more_horiz, color: appTheme.colorTheme.appBarIcons),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return OganizationsBottomSheet(
                      state: oganizationsState,
                    );
                  },
                );
              },
            ),
          ),  
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        child: Column(
          children: [
            // [ШАБЛОН: TogglePageView(), если есть страницы]
            SaveBar(state: oganizationsState),
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
              state: oganizationsState,
              iconLeft: Icon(
                Icons.description,
                size: AppSizes.sizeIconInFieldData,
                color: appTheme.colorTheme.inputFieldIconLeft,
              ),
            ),
            InputField(
              lable: 'ИНН',
              nameData: 'innTextController',
              state: oganizationsState,
              iconLeft: Icon(
                Icons.description,
                size: AppSizes.sizeIconInFieldData,
                color: appTheme.colorTheme.inputFieldIconLeft,
              ),
            ),
            InputField(
              lable: 'KPP',
              nameData: 'kppTextController',
              state: oganizationsState,
              iconLeft: Icon(
                Icons.description,
                size: AppSizes.sizeIconInFieldData,
                color: appTheme.colorTheme.inputFieldIconLeft,
              ),
            ),
            InputField(
              lable: 'Адрес',
              nameData: 'adressTextController',
              state: oganizationsState,
              iconLeft: Icon(
                Icons.location_on,
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