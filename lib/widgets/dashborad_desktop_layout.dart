import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_and_quickinvoice_section.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_card_and_transaction_history.dart';

class DashboradDesktopLayout extends StatelessWidget {
  const DashboradDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: AllExpensessandQuickInvoiceSection(),
          ),
        ),
        SizedBox(width: 32),
        Expanded(
          child: Column(
            children: [
              SizedBox(height: 40),
              MyCardAndTransactionHistory(),
              SizedBox(height: 20),
              Expanded(child: IncomeSection()),
            ],
          ),
        ),
      ],
    );
  }
}
