import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/widgets/active_inactive_all_expenses_items.dart';

class AllExpensesItems extends StatelessWidget {
  const AllExpensesItems({
    super.key,
    required this.itemModel,
    required this.isSelected,
  });
  final AllExpensesItemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensesItems(itemModel: itemModel)
        : InActiveAllExpensesItems(itemModel: itemModel);
  }
}
