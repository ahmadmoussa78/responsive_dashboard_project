import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expenses_items.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  static final items = [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: '20 jan 2026',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: '20 jan 2026',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: '20 jan 2026',
      price: r'$20,129',
    ),
  ];

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: AllExpensesItemsListView.items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;

        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updatedIndex(index);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensesItems(
                  isSelected: selectedIndex == index,
                  itemModel: item,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updatedIndex(index);
              },
              child: AllExpensesItems(
                isSelected: selectedIndex == index,
                itemModel: item,
              ),
            ),
          );
        }
      }).toList(),
    );
  }

  void updatedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
