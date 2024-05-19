import 'package:dashboard/widgets/income_detailes.dart';
import 'package:dashboard/widgets/income_header.dart';
import 'package:dashboard/widgets/my_chart.dart';
import 'package:flutter/material.dart';

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        children: [
          IncomeHeader(),
          SizedBox(height: 16),
          Row(children: [
            Expanded(flex: 1, child: MyChart()),
            SizedBox(
              width: 20,
            ),
            Expanded(flex: 2, child: IncomeDetailes()),
          ])
        ],
      ),
    );
  }
}
