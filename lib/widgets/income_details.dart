import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_details_model.dart';
import 'package:responsive_dashboard/widgets/item_details_list_tile.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    ItemDetailsModel(
      color: Color(0xff208CC8),
      title: "Design service",
      value: "40%",
    ),
    ItemDetailsModel(
      color: Color(0xff4EB7F2),
      title: "Design product",
      value: "40%",
    ),
    ItemDetailsModel(
      color: Color(0xff064061),
      title: "Product royalti",
      value: "40%",
    ),
    ItemDetailsModel(color: Color(0xffE2DECD), title: "Other", value: "40%"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ItemDetails(itemDetailsModel: items[index]);
      },
    );
  }
}
