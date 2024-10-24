import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
import '../../data/collections/products_collection.dart';
import '../../data/db/products_db.dart';
import '../views/products_card_in_list.dart';
import '../../../../../../shared/presentation/widgets/custom_divider.dart';

class ProductsListView extends StatelessWidget {
  final String viewMode;

  const ProductsListView({super.key, required this.viewMode});

  @override
  Widget build(BuildContext context) {
    final db = context.watch<ProductsDB>();
    db.readProducts();
    List<ProductsCollection> currentProducts = db.currentProductsList;

    return ListView.builder(
      itemCount: currentProducts.isEmpty ? 0 : currentProducts.length * 2 - 1, // Увеличиваем количество элементов для разделителей
      itemBuilder: (context, index) {
        if (index.isEven) {
          // Отображаем CardInList для четных индексов
          return ProductsCardInList(
            viewMode: viewMode,
            productsModel: currentProducts[index ~/ 2].toModel(),
          );
        } else {
          // Отображаем разделитель для нечетных индексов
          return const CustomDivider();
        }
      },
    );
  }
}