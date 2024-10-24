import 'package:go_router/go_router.dart';

import '../shared/presentation/screens/shell_screen.dart'; 
import '../shared/presentation/screens/menu_screen.dart';
import 'app_transitions.dart';
import '../shared/presentation/screens/purchases_shell_screen.dart';
import '../shared/presentation/screens/sales_shell_screen.dart';
import '../shared/presentation/screens/reports_shell_screen.dart';
import '../shared/presentation/screens/settings_shell_screen.dart';
import '../features/metadata/catalogs/units/presentation/views/units_screen_list.dart';
import '../features/metadata/catalogs/units/presentation/views/units_screen_element.dart';
import '../features/metadata/catalogs/units/data/models/units_model.dart';
import '../features/metadata/catalogs/counteragents/presentation/views/counteragents_screen_list.dart';
import '../features/metadata/catalogs/counteragents/presentation/views/counteragents_screen_element.dart';
import '../features/metadata/catalogs/counteragents/data/models/counteragents_model.dart';
import '../features/metadata/catalogs/organizations/presentation/views/organizations_screen_list.dart';
import '../features/metadata/catalogs/organizations/presentation/views/organizations_screen_element.dart';
import '../features/metadata/catalogs/organizations/data/models/organizations_model.dart';
import '../features/metadata/documents/purchase_documents/presentation/views/purchase_documents_screen_list.dart';
import '../features/metadata/documents/purchase_documents/presentation/views/purchase_documents_screen_element.dart';
import '../features/metadata/documents/purchase_documents/data/models/purchase_documents_model.dart';
import '../features/metadata/documents/sale_documents/presentation/views/sale_documents_screen_list.dart';
import '../features/metadata/documents/sale_documents/presentation/views/sale_documents_screen_element.dart';
import '../features/metadata/documents/sale_documents/data/models/sale_documents_model.dart';
import '../features/metadata/catalogs/goods_category/presentation/views/goods_category_screen_list.dart';
import '../features/metadata/catalogs/goods_category/presentation/views/goods_category_screen_element.dart';
import '../features/metadata/catalogs/goods_category/data/models/goods_category_model.dart';
import '../features/metadata/catalogs/products/presentation/views/products_screen_list.dart';
import '../features/metadata/catalogs/products/presentation/views/products_screen_element.dart';
import '../features/metadata/catalogs/products/data/models/products_model.dart';


GoRouter appRouter = GoRouter(
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, shell) => ShellScreen(
        shell: shell,
      ),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/sales',
              builder: (context, state) => const PurchasesShellScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/purchases',
              builder: (context, state) => const SalesShellScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/reports',
              builder: (context, state) => const ReportsShellScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/settings',
              builder: (context, state) => const SettingsShellScreen(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/',
      redirect: (context, state) => '/sales', // Путь главного экрана
    ),  
    GoRoute(
      path: '/menu',
      pageBuilder: (context, state) {
        return slideTransitionPage(child: const MenuScreen(), state: state);// Основное меню
      },
    ),
    GoRoute(
      path: '/unitsList/:viewMode', //mode = select/list/filter
      pageBuilder: (context, state) {
        final String viewMode = state.pathParameters['viewMode'] ?? '';
        return slideTransitionPage(child: UnitsScreenList(viewMode: viewMode), state: state);
      },
    ),
    GoRoute(
      path: '/unitsScreenElement',
      pageBuilder: (context, state) {
        final Map<String, dynamic>? data = state.extra as Map<String, dynamic>?;
        final UnitsModel unitsModel = data?['unitsModel'];

        return slideTransitionPage(
            child: UnitsScreenElement(
              unitsModel: unitsModel,
            ),
            state: state);
      },
    ),
    GoRoute(
      path: '/counteragentsList/:viewMode', //mode = select/list/filter
      pageBuilder: (context, state) {
        final String viewMode = state.pathParameters['viewMode'] ?? '';
        return slideTransitionPage(child: CounteragentsScreenList(viewMode: viewMode), state: state);
      },
    ),
    GoRoute(
      path: '/counteragentsScreenElement',
      pageBuilder: (context, state) {
        final Map<String, dynamic>? data = state.extra as Map<String, dynamic>?;
        final CounteragentsModel counteragentsModel = data?['counteragentsModel'];

        return slideTransitionPage(
            child: CounteragentsScreenElement(
              counteragentsModel: counteragentsModel,
            ),
            state: state);
      },
    ),
    GoRoute(
      path: '/organizationsList/:viewMode', //mode = select/list/filter
      pageBuilder: (context, state) {
        final String viewMode = state.pathParameters['viewMode'] ?? '';
        return slideTransitionPage(child: OrganizationsScreenList(viewMode: viewMode), state: state);
      },
    ),
    GoRoute(
      path: '/organizationsScreenElement',
      pageBuilder: (context, state) {
        final Map<String, dynamic>? data = state.extra as Map<String, dynamic>?;
        final OrganizationsModel organizationsModel = data?['organizationsModel'];

        return slideTransitionPage(
            child: OrganizationsScreenElement(
              organizationsModel: organizationsModel,
            ),
            state: state);
      },
    ),
    GoRoute(
      path: '/purchaseDocumentsList/:viewMode', //mode = select/list/filter
      pageBuilder: (context, state) {
        final String viewMode = state.pathParameters['viewMode'] ?? '';
        return slideTransitionPage(child: PurchaseDocumentsScreenList(viewMode: viewMode), state: state);
      },
    ),
    GoRoute(
      path: '/purchaseDocumentsScreenElement',
      pageBuilder: (context, state) {
        final Map<String, dynamic>? data = state.extra as Map<String, dynamic>?;
        final PurchaseDocumentsModel purchaseDocumentsModel = data?['purchaseDocumentsModel'];

        return slideTransitionPage(
            child: PurchaseDocumentsScreenElement(
              purchaseDocumentsModel: purchaseDocumentsModel,
            ),
            state: state);
      },
    ),
    GoRoute(
      path: '/saleDocumentsList/:viewMode', //mode = select/list/filter
      pageBuilder: (context, state) {
        final String viewMode = state.pathParameters['viewMode'] ?? '';
        return slideTransitionPage(child: SaleDocumentsScreenList(viewMode: viewMode), state: state);
      },
    ),
    GoRoute(
      path: '/saleDocumentsScreenElement',
      pageBuilder: (context, state) {
        final Map<String, dynamic>? data = state.extra as Map<String, dynamic>?;
        final SaleDocumentsModel saleDocumentsModel = data?['saleDocumentsModel'];

        return slideTransitionPage(
            child: SaleDocumentsScreenElement(
              saleDocumentsModel: saleDocumentsModel,
            ),
            state: state);
      },
    ),
    GoRoute(
      path: '/goodsCategoryList/:viewMode', //mode = select/list/filter
      pageBuilder: (context, state) {
        final String viewMode = state.pathParameters['viewMode'] ?? '';
        return slideTransitionPage(child: GoodsCategoryScreenList(viewMode: viewMode), state: state);
      },
    ),
    GoRoute(
      path: '/goodsCategoryScreenElement',
      pageBuilder: (context, state) {
        final Map<String, dynamic>? data = state.extra as Map<String, dynamic>?;
        final GoodsCategoryModel goodsCategoryModel = data?['goodsCategoryModel'];

        return slideTransitionPage(
            child: GoodsCategoryScreenElement(
              goodsCategoryModel: goodsCategoryModel,
            ),
            state: state);
      },
    ),
    GoRoute(
      path: '/productsList/:viewMode', //mode = select/list/filter
      pageBuilder: (context, state) {
        final String viewMode = state.pathParameters['viewMode'] ?? '';
        return slideTransitionPage(child: ProductsScreenList(viewMode: viewMode), state: state);
      },
    ),
    GoRoute(
      path: '/productsScreenElement',
      pageBuilder: (context, state) {
        final Map<String, dynamic>? data = state.extra as Map<String, dynamic>?;
        final ProductsModel productsModel = data?['productsModel'];

        return slideTransitionPage(
            child: ProductsScreenElement(
              productsModel: productsModel,
            ),
            state: state);
      },
    ),
  ],
);