import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
import '../../data/collections/organizations_collection.dart';
import '../../data/db/organizations_db.dart';
import '../views/organizations_card_in_list.dart';
import '../../../../../../shared/presentation/widgets/custom_divider.dart';

class OrganizationsListView extends StatelessWidget {
  final String viewMode;

  const OrganizationsListView({super.key, required this.viewMode});

  @override
  Widget build(BuildContext context) {
    final db = context.watch<OrganizationsDB>();
    db.readOrganizations();
    List<OrganizationsCollection> currentOrganizations = db.currentOrganizationsList;

    return ListView.builder(
      itemCount: currentOrganizations.isEmpty ? 0 : currentOrganizations.length * 2 - 1, // Увеличиваем количество элементов для разделителей
      itemBuilder: (context, index) {
        if (index.isEven) {
          // Отображаем CardInList для четных индексов
          return OrganizationsCardInList(
            viewMode: viewMode,
            organizationsModel: currentOrganizations[index ~/ 2].toModel(),
          );
        } else {
          // Отображаем разделитель для нечетных индексов
          return const CustomDivider();
        }
      },
    );
  }
}