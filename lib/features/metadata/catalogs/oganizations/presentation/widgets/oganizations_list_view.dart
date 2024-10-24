import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/collections/oganizations_collection.dart';
import '../../data/db/oganizations_db.dart';
import '../views/oganizations_card_in_list.dart';

class OganizationsListView extends StatelessWidget {
  final String viewMode;

  const OganizationsListView({super.key, required this.viewMode});

  @override
  Widget build(BuildContext context) {
    final db = context.watch<OganizationsDB>();
    db.readOganizations();
    List<OganizationsCollection> currentOganizations = db.currentOganizationsList;

    return ListView.builder(
      itemCount: currentOganizations.length,
      itemBuilder: (context, index) {
        return OganizationsCardInList(
          viewMode: viewMode,
          oganizationsModel: currentOganizations[index].toModel(),
        );
      },
    );
  }
}