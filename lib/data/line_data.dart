import 'package:fl_chart/fl_chart.dart';
import 'dart:math';

class LineData {
  static final List<FlSpot> spots = List.generate(120, (index) {
    int minY = -5;
    int maxY = 105;
    double y = Random().nextDouble() * (maxY - minY) + minY;
    return FlSpot(index.toDouble(), y);
  });

  static final Map<int, String> leftTitle = {
    0: '0',
    20: '2k',
    40: '4k',
    60: '6k',
    80: '8k',
    100: '10k',
  };

  static final Map<int, String> bottomTitle = {
    0: 'Jan',
    10: 'Feb',
    20: 'Mar',
    30: 'Apr',
    40: 'May',
    50: 'Jun',
    90: 'Jul',
    60: 'Aug',
    70: 'Sep',
    80: 'Oct',
    100: 'Nov',
    110: 'Dec',
  };
}
