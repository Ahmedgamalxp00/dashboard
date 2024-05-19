import 'package:dashboard/widgets/income.dart';
import 'package:dashboard/widgets/my_cards_and_last_transactions.dart';
import 'package:flutter/material.dart';

class CardsAndIncome extends StatelessWidget {
  const CardsAndIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 20),
      child: Column(
        children: [
          SizedBox(height: 20),
          MyCardsAndLastTransaction(),
          SizedBox(height: 20),
          Income(),
        ],
      ),
    );
  }
}
