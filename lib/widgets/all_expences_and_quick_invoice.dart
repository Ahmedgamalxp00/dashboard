import 'package:dashboard/widgets/all_expences.dart';
import 'package:dashboard/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

class AllExpencesAndQuickInvoice extends StatelessWidget {
  const AllExpencesAndQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Column(
        children: [
          MediaQuery.of(context).size.width < 700
              ? const SizedBox(height: 0)
              : const SizedBox(height: 20),
          const AllExpences(),
          const SizedBox(height: 20),
          const QuickInvoice(),
        ],
      ),
    );
  }
}
