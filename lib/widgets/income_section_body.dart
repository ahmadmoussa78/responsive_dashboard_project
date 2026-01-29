import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/income_chart.dart';
import 'package:responsive_dashboard/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return width >= 1200 && width <= 1750
        ? const SizedBox()
        : const SizedBox(
            height: 200,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: IncomeChart()),
                Expanded(flex: 2, child: IncomeDetails()),
              ],
            ),
          );
    // return const SizedBox(
    //   height: 200,
    //   child: Row(
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       Expanded(child: IncomeChart()),
    //       Expanded(child: IncomeDetails()),
    //     ],
    //   ),
    // );
  }
}
