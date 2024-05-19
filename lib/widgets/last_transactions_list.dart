import 'package:dashboard/models/transaction_model.dart';
import 'package:dashboard/widgets/transaction_list_item.dart';
import 'package:flutter/material.dart';

class LastTransactionList extends StatelessWidget {
  const LastTransactionList({super.key});
  static const List<TransactionModel> transactions = [
    TransactionModel(
        title: 'Cash Withdrawal',
        amount: 20.129,
        date: '13 Apr, 2022',
        isIncome: false),
    TransactionModel(
        title: 'Landing Page project',
        amount: 20.129,
        date: '13 Apr, 2022 at 3:30 PM',
        isIncome: true),
    TransactionModel(
        title: 'Juni Mobile App project',
        amount: 20.129,
        date: '13 Apr, 2022 at 3:30 PM',
        isIncome: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        transactions.length,
        (index) => TransactionListItem(transactionModel: transactions[index]),
      ),
    );
  }
}
