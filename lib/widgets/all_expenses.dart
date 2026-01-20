import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/widgets/all_expenses_items.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(16),
        ),
      ),
      child: Column(
        children: [
          const AllExpensesHeader(),
          const SizedBox(height: 16),
          AllExpensesItems(
            itemModel: AllExpensesItemModel(
              image: Assets.imagesIncome,
              title: "Income",
              date: 'April 2022',
              price: r'$20,129',
            ),
          ),
        ],
      ),
    );
  }
}
