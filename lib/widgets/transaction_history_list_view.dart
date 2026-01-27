import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transcation_model.dart';
import 'package:responsive_dashboard/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const items = [
    TranscationModel(
      title: "Cash Withdrawal",
      date: "13 April 2026",
      amount: r"$20,129",
      isWithDrawal: true,
    ),
    TranscationModel(
      title: "Landing Page project",
      date: "13 April 2026",
      amount: r"$20,129",
      isWithDrawal: false,
    ),
    TranscationModel(
      title: "Juni Mobile App project",
      date: "13 April 2026",
      amount: r"$20,129",
      isWithDrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return TransactionItem(transcationModel: items[index]);
      },
    );
  }
}
