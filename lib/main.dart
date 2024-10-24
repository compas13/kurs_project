import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/app_router.dart';
import 'shared/data/db/init_db.dart';
import 'shared/presentation/state/provider_app_state.dart';
import 'shared/presentation/state/provider_app_theme.dart';
import 'features/ui/calc/presentation/state/calc_state.dart';

import 'features/metadata/catalogs/units/data/db/units_db.dart';
import 'features/metadata/catalogs/units/presentation/state/units_state.dart';
import 'features/metadata/catalogs/counteragents/data/db/counteragents_db.dart';
import 'features/metadata/catalogs/counteragents/presentation/state/counteragents_state.dart';
import 'features/metadata/catalogs/organizations/data/db/organizations_db.dart';
import 'features/metadata/catalogs/organizations/presentation/state/organizations_state.dart';
import 'features/metadata/documents/purchase_documents/data/db/purchase_documents_db.dart';
import 'features/metadata/documents/purchase_documents/presentation/state/purchase_documents_state.dart';
import 'features/metadata/documents/sale_documents/data/db/sale_documents_db.dart';
import 'features/metadata/documents/sale_documents/presentation/state/sale_documents_state.dart';
import 'features/metadata/catalogs/goods_category/data/db/goods_category_db.dart';
import 'features/metadata/catalogs/goods_category/presentation/state/goods_category_state.dart';
import 'features/metadata/catalogs/products/data/db/products_db.dart';
import 'features/metadata/catalogs/products/presentation/state/products_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await InitDB().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProviderAppState()),
        ChangeNotifierProvider(create: (context) => ProviderAppTheme()),
        ChangeNotifierProvider(create: (context) => CalcState()),
        ChangeNotifierProvider(create: (context) => UnitsDB()),
        ChangeNotifierProvider(create: (context) => UnitsState()),
        ChangeNotifierProvider(create: (context) => CounteragentsDB()),
        ChangeNotifierProvider(create: (context) => CounteragentsState()),
        ChangeNotifierProvider(create: (context) => OrganizationsDB()),
        ChangeNotifierProvider(create: (context) => OrganizationsState()),
        ChangeNotifierProvider(create: (context) => PurchaseDocumentsDB()),
        ChangeNotifierProvider(create: (context) => PurchaseDocumentsState()),
        ChangeNotifierProvider(create: (context) => SaleDocumentsDB()),
        ChangeNotifierProvider(create: (context) => SaleDocumentsState()),
        ChangeNotifierProvider(create: (context) => GoodsCategoryDB()),
        ChangeNotifierProvider(create: (context) => GoodsCategoryState()),
        ChangeNotifierProvider(create: (context) => ProductsDB()),
        ChangeNotifierProvider(create: (context) => ProductsState()),
      ],
      child: MaterialApp.router(
        title: 'My store',
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter,
      ),
    );
  }
}
