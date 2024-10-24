import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
import '../../data/collections/counteragents_collection.dart';
import '../../data/db/counteragents_db.dart';
import '../views/counteragents_card_in_list.dart';
import '../../../../../../shared/presentation/widgets/custom_divider.dart';

class CounteragentsListView extends StatelessWidget {
  final String viewMode;

  const CounteragentsListView({super.key, required this.viewMode});

  @override
  Widget build(BuildContext context) {
    final db = context.watch<CounteragentsDB>();
    db.readCounteragents();
    List<CounteragentsCollection> currentCounteragents = db.currentCounteragentsList;

    return ListView.builder(
      itemCount: currentCounteragents.isEmpty ? 0 : currentCounteragents.length * 2 - 1, // Увеличиваем количество элементов для разделителей
      itemBuilder: (context, index) {
        if (index.isEven) {
          // Отображаем CardInList для четных индексов
          return CounteragentsCardInList(
            viewMode: viewMode,
            counteragentsModel: currentCounteragents[index ~/ 2].toModel(),
          );
        } else {
          // Отображаем разделитель для нечетных индексов
          return const CustomDivider();
        }
      },
    );
  }
}