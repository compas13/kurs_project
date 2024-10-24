import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:provider/provider.dart';

import '../../metadata/documents/sale_documents/data/collections/sale_documents_collection.dart';
import '../../metadata/documents/sale_documents/data/db/sale_documents_db.dart';
import '../../metadata/documents/sale_documents/data/models/sale_documents_model.dart';

class SalesChartReport extends StatelessWidget {
  const SalesChartReport({super.key});

  @override
  Widget build(BuildContext context) {
    final db = context.watch<SaleDocumentsDB>();
    db.readSaleDocuments();
    List<SaleDocumentsCollection> currentSalesCollection = db.currentSaleDocumentsList;
    List<SaleDocumentsModel> salesData = currentSalesCollection.map((salesCollection) => salesCollection.toModel()).toList();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: LineChart(
        LineChartData(
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 45,
                getTitlesWidget: (value, meta) {
                  return Text(
                    value.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  );
                },
              ),
            ),
            // bottomTitles: AxisTitles(
            //   sideTitles: SideTitles(
            //     showTitles: true,
            //     getTitlesWidget: (value, meta) {
            //       return Text(
            //         value.toString(),
            //         style: const TextStyle(
            //           color: Colors.white,
            //           fontSize: 12,
            //         ),
            //       );
            //     },
            //   ),
            // ),
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: Colors.white, width: 1),
          ),
          gridData: const FlGridData(show: true),
          lineBarsData: [
            LineChartBarData(
              spots: _getChartData(salesData),
              isCurved: false,
              color: Colors.blue,
              barWidth: 4,
              belowBarData: BarAreaData(show: false),
            ),
          ],
        ),
      ),
    );
  }

  List<FlSpot> _getChartData(List<SaleDocumentsModel> salesData) {
    List<FlSpot> spots = [];

    for (int i = 0; i < salesData.length; i++) {
      // Преобразуем дату в число (например, используем индекс в качестве значения X)
      double xValue = i.toDouble(); // Можете использовать другую логику, если нужно
      double yValue = salesData[i].sum; // Сумма продаж

      spots.add(FlSpot(xValue, yValue));
    }

    return spots;
  }
}
