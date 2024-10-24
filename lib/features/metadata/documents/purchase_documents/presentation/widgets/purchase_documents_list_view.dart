import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
import '../../data/collections/purchase_documents_collection.dart';
import '../../data/db/purchase_documents_db.dart';
import '../views/purchase_documents_card_in_list.dart';
import '../../../../../../shared/presentation/widgets/custom_divider.dart';

class PurchaseDocumentsListView extends StatelessWidget {
  final String viewMode;

  const PurchaseDocumentsListView({super.key, required this.viewMode});

  @override
  Widget build(BuildContext context) {
    final db = context.watch<PurchaseDocumentsDB>();
    db.readPurchaseDocuments();
    List<PurchaseDocumentsCollection> currentPurchaseDocuments = db.currentPurchaseDocumentsList;

    return ListView.builder(
      itemCount: currentPurchaseDocuments.isEmpty ? 0 : currentPurchaseDocuments.length * 2 - 1, // Увеличиваем количество элементов для разделителей
      itemBuilder: (context, index) {
        if (index.isEven) {
          // Отображаем CardInList для четных индексов
          return PurchaseDocumentsCardInList(
            viewMode: viewMode,
            purchaseDocumentsModel: currentPurchaseDocuments[index ~/ 2].toModel(),
          );
        } else {
          // Отображаем разделитель для нечетных индексов
          return const CustomDivider();
        }
      },
    );
  }
}