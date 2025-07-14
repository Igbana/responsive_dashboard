import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/colors.dart';
import 'package:responsive_dashboard/utils/dimensions.dart';
import 'package:responsive_dashboard/utils/styles.dart';

import '../data/line_data.dart';

class LineChartCard extends StatelessWidget {
  const LineChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    print(LineData.spots);
    return Container(
      decoration: AppStyles.cardDecoration,
      padding: AppDimensions.cardPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Steps Overview",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 20),
          AspectRatio(
            aspectRatio: 16 / 6,
            child: LineChart(
              LineChartData(
                minX: 0,
                maxX: 120,
                minY: -5,
                maxY: 105,
                lineTouchData: LineTouchData(),
                gridData: FlGridData(show: false),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    spots: LineData.spots,
                    dotData: FlDotData(show: false),
                    color: AppColors.selectionColor,
                    barWidth: 2.5,
                    belowBarData: BarAreaData(
                      gradient: LinearGradient(
                        colors: [
                          AppColors.selectionColor.withAlpha(127),
                          Colors.transparent,
                        ],
                      ),
                      show: true,
                    ),
                  ),
                ],
                titlesData: FlTitlesData(
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) =>
                          LineData.bottomTitle[value.toInt()] != null
                          ? SideTitleWidget(
                              meta: meta,
                              child: Text(
                                LineData.bottomTitle[value.toInt()]!,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[400],
                                ),
                              ),
                            )
                          : SizedBox(),
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) =>
                          LineData.leftTitle[value.toInt()] != null
                          ? SideTitleWidget(
                              meta: meta,
                              child: Text(
                                LineData.leftTitle[value.toInt()].toString(),
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[400],
                                ),
                              ),
                            )
                          : SizedBox(),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
