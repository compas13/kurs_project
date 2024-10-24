import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
import '../state/provider_app_theme.dart'; 
import '../../../features/metadata/catalogs/units/data/db/units_db.dart';
import '../../../features/metadata/catalogs/units/presentation/state/units_state.dart';
import '../../../features/metadata/catalogs/counteragents/data/db/counteragents_db.dart';
import '../../../features/metadata/catalogs/counteragents/presentation/state/counteragents_state.dart';
import '../../../features/metadata/catalogs/organizations/data/db/organizations_db.dart';
import '../../../features/metadata/catalogs/organizations/presentation/state/organizations_state.dart';
import '../../../features/metadata/documents/purchase_documents/data/db/purchase_documents_db.dart';
import '../../../features/metadata/documents/purchase_documents/presentation/state/purchase_documents_state.dart';
import '../../../features/metadata/documents/sale_documents/data/db/sale_documents_db.dart';
import '../../../features/metadata/documents/sale_documents/presentation/state/sale_documents_state.dart';
import '../../../features/metadata/catalogs/goods_category/data/db/goods_category_db.dart';
import '../../../features/metadata/catalogs/goods_category/presentation/state/goods_category_state.dart';
import '../../../features/metadata/catalogs/products/data/db/products_db.dart';
import '../../../features/metadata/catalogs/products/presentation/state/products_state.dart';

class SaveBar extends StatelessWidget {
  final dynamic state;
  const SaveBar({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    var appTheme = context.watch<ProviderAppTheme>();
  
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
              state.deleteProvider();
            },
            child: Icon(Icons.cancel, color: appTheme.colorTheme.appBarIcons),
          ),
          GestureDetector(
            onTap: () {
              if (state is UnitsState) {
                context.read<UnitsDB>().setDeleteMarkUnits(
                      unitsModel: state.stateToModel(),
                      value: true,
                    );
              } else if (state is CounteragentsState) {
                context.read<CounteragentsDB>().setDeleteMarkCounteragents(
                      counteragentsModel: state.stateToModel(),
                      value: true,
                    );
              } else if (state is OrganizationsState) {
                context.read<OrganizationsDB>().setDeleteMarkOrganizations(
                      organizationsModel: state.stateToModel(),
                      value: true,
                    );
              } else if (state is PurchaseDocumentsState) {
                context.read<PurchaseDocumentsDB>().setDeleteMarkPurchaseDocuments(
                      purchaseDocumentsModel: state.stateToModel(),
                      value: true,
                    );
              } else if (state is SaleDocumentsState) {
                context.read<SaleDocumentsDB>().setDeleteMarkSaleDocuments(
                      saleDocumentsModel: state.stateToModel(),
                      value: true,
                    );
              } else if (state is GoodsCategoryState) {
                context.read<GoodsCategoryDB>().setDeleteMarkGoodsCategory(
                      goodsCategoryModel: state.stateToModel(),
                      value: true,
                    );
              } else if (state is ProductsState) {
                context.read<ProductsDB>().setDeleteMarkProducts(
                      productsModel: state.stateToModel(),
                      value: true,
                    );
              }

              Navigator.of(context).pop();
              state.deleteProvider();
            },
            child: Icon(Icons.delete, color: appTheme.colorTheme.appBarIcons),
          ),
          GestureDetector(
            onTap: () {
              if (state is UnitsState) {
                context.read<UnitsDB>().putUnits(
                      unitsModel: state.stateToModel(),
                    );
              } else if (state is CounteragentsState) {
                context.read<CounteragentsDB>().putCounteragents(
                      counteragentsModel: state.stateToModel(),
                    );
              } else if (state is OrganizationsState) {
                context.read<OrganizationsDB>().putOrganizations(
                      organizationsModel: state.stateToModel(),
                    );
              } else if (state is PurchaseDocumentsState) {
                context.read<PurchaseDocumentsDB>().putPurchaseDocuments(
                      purchaseDocumentsModel: state.stateToModel(),
                    );
              } else if (state is SaleDocumentsState) {
                context.read<SaleDocumentsDB>().putSaleDocuments(
                      saleDocumentsModel: state.stateToModel(),
                    );
              } else if (state is GoodsCategoryState) {
                context.read<GoodsCategoryDB>().putGoodsCategory(
                      goodsCategoryModel: state.stateToModel(),
                    );
              } else if (state is ProductsState) {
                context.read<ProductsDB>().putProducts(
                      productsModel: state.stateToModel(),
                    );
              }

              Navigator.of(context).pop();
              state.deleteProvider();
            },
            child: Icon(Icons.save, color: appTheme.colorTheme.appBarIcons),
          ),
        ],
      ),
    );
  }
}