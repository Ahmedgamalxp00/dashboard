import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/widgets/last_transactions_section.dart';

import 'package:dashboard/widgets/my_cards_section.dart';
import 'package:flutter/material.dart';

class MyCardsAndLastTransaction extends StatelessWidget {
  const MyCardsAndLastTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Cards', style: AppStyles.styleSemiBold20(context)),
          const SizedBox(height: 20),
          const MyCardsSection(),
          const Divider(
            color: Color(0xffF1F1F1),
            height: 40,
          ),
          const LastTransactionsSection(),
        ],
      ),
    );
  }
}
