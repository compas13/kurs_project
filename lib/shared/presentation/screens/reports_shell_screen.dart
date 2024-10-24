import 'package:flutter/material.dart';

import '../../../features/reports/sales_report/sales_cart_report.dart';

class ReportsShellScreen extends StatelessWidget {
  const ReportsShellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 300,
            child: SalesChartReport(),
          ),
          Text(
            'Отчет по продажам',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
