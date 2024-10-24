import 'package:flutter/material.dart';
import '../widgets/command_bar.dart';
import '../../../features/metadata/documents/purchase_documents/data/models/purchase_documents_model.dart';
import '../../../features/metadata/documents/purchase_documents/presentation/widgets/purchase_documents_list_view.dart';   
class SalesShellScreen extends StatelessWidget {
  const SalesShellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommandBar(
          title: 'Поступления',
          pathNewElement: '/purchaseDocumentsScreenElement',
          nameModel: 'purchaseDocumentsModel',
          model: PurchaseDocumentsModel(),
        ),
        const Expanded(
          child: PurchaseDocumentsListView(
            viewMode: 'list',
          ),
        ),
      ],
    );
  }
}