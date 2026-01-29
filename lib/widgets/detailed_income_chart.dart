import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
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
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          title: activeIndex == 0 ? 'Design service' : '40%',
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: Colors.black),
          showTitle: true,
          radius: activeIndex == 0 ? 60 : 50,
          color: const Color(0XFF208CC8),
          value: 40,
        ),
        PieChartSectionData(
          radius: activeIndex == 1 ? 60 : 50,

          color: const Color(0XFF4EB7F2),
          value: 25,
          titlePositionPercentageOffset: activeIndex == 1 ? 2.1 : null,
          title: activeIndex == 1 ? 'Design product' : '25%',
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: Colors.black),
          showTitle: true,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.4 : null,
          title: activeIndex == 2 ? 'Product royalti' : '22%',
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: Colors.black),
          showTitle: true,
          radius: activeIndex == 2 ? 60 : 50,

          color: const Color(0Xff064061),
          value: 20,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.6 : null,
          title: activeIndex == 3 ? 'Other' : '40%',
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: Colors.black),
          showTitle: true,
          radius: activeIndex == 3 ? 60 : 50,
          color: const Color(0XFFE2DECD),
          value: 22,
        ),
      ],
    );
  }
}
