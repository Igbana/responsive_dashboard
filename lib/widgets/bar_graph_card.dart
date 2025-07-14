import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:responsive_dashboard/data/bar_graph_data.dart';

import '../utils/styles.dart';
import '../utils/dimensions.dart';
import '../models/bar_graph_model.dart';

class BarGraphCard extends StatelessWidget {
  const BarGraphCard({super.key, required this.data});

  final BarGraphModel data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 5 / 4,
        child: Container(
          padding: AppDimensions.cardPadding,
          decoration: AppStyles.cardDecoration,
          child: Column(
            spacing: 12,
            children: [
              Text(
                data.label,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              Expanded(
                child: BarChart(
                  BarChartData(
                    barGroups: chartGroups(),
                    gridData: FlGridData(show: false),
                    borderData: FlBorderData(show: false),
                    titlesData: FlTitlesData(
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      rightTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) => Padding(
                            padding: EdgeInsetsGeometry.only(top: 5),
                            child: Text(
                              BarGraphData.label[value.toInt()],
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<BarChartGroupData> chartGroups() {
    return data.graph
        .map(
          (point) => BarChartGroupData(
            x: point.x.toInt(),
            barRods: [
              BarChartRodData(
                toY: point.y,
                width: 12,
                color: data.color,
                borderRadius: BorderRadius.vertical(top: Radius.circular(3)),
              ),
            ],
          ),
        )
        .toList();
  }
}
