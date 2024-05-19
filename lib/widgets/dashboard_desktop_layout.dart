import 'package:dashboard/widgets/all_expences_and_quick_invoice.dart';
import 'package:dashboard/widgets/cards_and_income.dart';
import 'package:dashboard/widgets/custom_drower.dart';
import 'package:flutter/material.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 2, child: CustomDrower()),
        Expanded(
          flex: 7,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(flex: 4, child: AllExpencesAndQuickInvoice()),
                    Expanded(flex: 3, child: CardsAndIncome()),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
