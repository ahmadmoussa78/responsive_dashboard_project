import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Income", style: AppStyles.styleSemiBold20(context)),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0XFFF1F1F1)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            children: [
               Text("Monthly", style: AppStyles.styleMedium16(context)),
              const SizedBox(width: 16),
              Transform.rotate(
                angle: -1.570,
                child: const Icon(Icons.arrow_back_ios_new),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
