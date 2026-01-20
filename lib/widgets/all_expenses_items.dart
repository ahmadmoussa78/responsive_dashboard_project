import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item_header.dart';

class AllExpensesItems extends StatelessWidget {
  const AllExpensesItems({super.key, required this.itemModel});
  final AllExpensesItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xffF1F1F1)),
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(image: itemModel.image),
          const SizedBox(height: 34),
          Text(itemModel.title, style: AppStyles.styleMedium16),
          const SizedBox(height: 8),
          Text(itemModel.date, style: AppStyles.styleRegular14),
          const SizedBox(height: 16),
          Text(itemModel.price, style: AppStyles.styleSemiBold24),
        ],
      ),
    );
  }
}
