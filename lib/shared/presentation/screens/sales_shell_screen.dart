import 'package:flutter/material.dart';
import '../widgets/command_bar.dart';
import '../../../features/metadata/documents/sale_documents/data/models/sale_documents_model.dart';
import '../../../features/metadata/documents/sale_documents/presentation/widgets/sale_documents_list_view.dart';   
class PurchasesShellScreen extends StatelessWidget {
  const PurchasesShellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommandBar(
          title: 'Реализации',
          pathNewElement: '/saleDocumentsScreenElement',
          nameModel: 'saleDocumentsModel',
          model: SaleDocumentsModel(),
        ),
        const Expanded(
          child: SaleDocumentsListView(
            viewMode: 'list',
          ),
        ),
      ],
    );
  }
}