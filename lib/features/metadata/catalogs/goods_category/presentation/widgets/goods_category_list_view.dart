import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
import '../../data/collections/goods_category_collection.dart';
import '../../data/db/goods_category_db.dart';
import '../views/goods_category_card_in_list.dart';
import '../../../../../../shared/presentation/widgets/custom_divider.dart';

class GoodsCategoryListView extends StatelessWidget {
  final String viewMode;

  const GoodsCategoryListView({super.key, required this.viewMode});

  @override
  Widget build(BuildContext context) {
    final db = context.watch<GoodsCategoryDB>();
    db.readGoodsCategory();
    List<GoodsCategoryCollection> currentGoodsCategory = db.currentGoodsCategoryList;

    return ListView.builder(
      itemCount: currentGoodsCategory.isEmpty ? 0 : currentGoodsCategory.length * 2 - 1, // Увеличиваем количество элементов для разделителей
      itemBuilder: (context, index) {
        if (index.isEven) {
          // Отображаем CardInList для четных индексов
          return GoodsCategoryCardInList(
            viewMode: viewMode,
            goodsCategoryModel: currentGoodsCategory[index ~/ 2].toModel(),
          );
        } else {
          // Отображаем разделитель для нечетных индексов
          return const CustomDivider();
        }
      },
    );
  }
}