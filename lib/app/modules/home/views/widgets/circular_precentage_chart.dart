import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:test_screens/core/utils/app_styles.dart';

class CircularPercentageChart extends StatelessWidget {
  const CircularPercentageChart(
      {super.key, required this.percentage, required this.color});
  final double percentage;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PieChart(
            PieChartData(
              startDegreeOffset: 270,
              sectionsSpace: 0,
              centerSpaceRadius: 15,
              sections: [
                PieChartSectionData(
                  color: color,
                  value: percentage,
                  radius: 5,
                  title: '',
                ),
                PieChartSectionData(
                  color: Colors.grey[300]!,
                  value: 100 - percentage,
                  radius: 5,
                  title: '',
                ),
              ],
            ),
          ),
          Text('${percentage.toStringAsFixed(0)}%', style: AppStyles.regular10),
        ],
      ),
    );
  }
}
