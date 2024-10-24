import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
import '../../data/collections/units_collection.dart';
import '../../data/db/units_db.dart';
import '../views/units_card_in_list.dart';
import '../../../../../../shared/presentation/widgets/custom_divider.dart';

class UnitsListView extends StatelessWidget {
  final String viewMode;

  const UnitsListView({super.key, required this.viewMode});

  @override
  Widget build(BuildContext context) {
    final db = context.watch<UnitsDB>();
    db.readUnits();
    List<UnitsCollection> currentUnits = db.currentUnitsList;

    return ListView.builder(
      itemCount: currentUnits.isEmpty ? 0 : currentUnits.length * 2 - 1, // Увеличиваем количество элементов для разделителей
      itemBuilder: (context, index) {
        if (index.isEven) {
          // Отображаем CardInList для четных индексов
          return UnitsCardInList(
            viewMode: viewMode,
            unitsModel: currentUnits[index ~/ 2].toModel(),
          );
        } else {
          // Отображаем разделитель для нечетных индексов
          return const CustomDivider();
        }
      },
    );
  }
}