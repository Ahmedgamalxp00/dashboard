import 'package:dashboard/widgets/last_transactions_header.dart';
import 'package:dashboard/widgets/last_transactions_list.dart';
import 'package:flutter/material.dart';

class LastTransactionsSection extends StatelessWidget {
  const LastTransactionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        LastTransactionHeader(),
        SizedBox(height: 20),
        LastTransactionList(),
      ],
    );
  }
}
