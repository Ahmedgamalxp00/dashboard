import 'package:dashboard/widgets/all_expences_and_quick_invoice.dart';
import 'package:dashboard/widgets/cards_and_income.dart';
import 'package:flutter/material.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpencesAndQuickInvoice(),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: CardsAndIncome(),
          ),
        ],
      ),
    );
  }
}
