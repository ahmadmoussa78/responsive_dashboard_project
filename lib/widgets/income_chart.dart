import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          showTitle: false,
          radius: activeIndex == 0 ? 60 : 50,
          color: const Color(0XFF208CC8),
          value: 40,
        ),
        PieChartSectionData(
          radius: activeIndex == 1 ? 60 : 50,
          showTitle: false,
          color: const Color(0XFF4EB7F2),
          value: 40,
        ),
        PieChartSectionData(
          radius: activeIndex == 2 ? 60 : 50,
          showTitle: false,
          color: const Color(0Xff064061),
          value: 40,
        ),
        PieChartSectionData(
          radius: activeIndex == 3 ? 60 : 50,
          showTitle: false,
          color: const Color(0XFFE2DECD),
          value: 40,
        ),
      ],
    );
  }
}
