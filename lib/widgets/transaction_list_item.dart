import 'package:dashboard/models/transaction_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionListItem extends StatelessWidget {
  const TransactionListItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyles.styleSemiBold20(context),
        ),
        subtitle: Text(
          transactionModel.date,
          style: AppStyles.styleRegular16(context)
              .copyWith(color: const Color(0xffAAAAAA)),
        ),
        trailing: Text(
          '\$${transactionModel.amount}',
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transactionModel.isIncome
                ? const Color(0xff7DD97B)
                : const Color(0xffF3735E),
          ),
        ),
      ),
    );
  }
}
