import 'package:flutter/material.dart';
import 'activity_details.dart';
import 'line_chart_card.dart';
import 'bar_details.dart';
import 'header.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 18,
        children: [
          const SizedBox(height: 18),
          const Header(),
          const ActivityDetailsCard(),
          const LineChartCard(),
          const BarDetails(),
        ],
      ),
    );
  }
}
