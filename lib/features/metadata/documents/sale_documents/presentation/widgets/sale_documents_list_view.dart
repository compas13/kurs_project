import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
import '../../data/collections/sale_documents_collection.dart';
import '../../data/db/sale_documents_db.dart';
import '../views/sale_documents_card_in_list.dart';
import '../../../../../../shared/presentation/widgets/custom_divider.dart';

class SaleDocumentsListView extends StatelessWidget {
  final String viewMode;

  const SaleDocumentsListView({super.key, required this.viewMode});

  @override
  Widget build(BuildContext context) {
    final db = context.watch<SaleDocumentsDB>();
    db.readSaleDocuments();
    List<SaleDocumentsCollection> currentSaleDocuments = db.currentSaleDocumentsList;

    return ListView.builder(
      itemCount: currentSaleDocuments.isEmpty ? 0 : currentSaleDocuments.length * 2 - 1, // Увеличиваем количество элементов для разделителей
      itemBuilder: (context, index) {
        if (index.isEven) {
          // Отображаем CardInList для четных индексов
          return SaleDocumentsCardInList(
            viewMode: viewMode,
            saleDocumentsModel: currentSaleDocuments[index ~/ 2].toModel(),
          );
        } else {
          // Отображаем разделитель для нечетных индексов
          return const CustomDivider();
        }
      },
    );
  }
}