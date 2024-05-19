import 'package:dashboard/models/income_detailes_model.dart';
import 'package:dashboard/widgets/income_detailes_item.dart';
import 'package:flutter/material.dart';

class IncomeDetailes extends StatelessWidget {
  const IncomeDetailes({super.key});
  static const List<IncomeDetailesModel> incomeItems = [
    IncomeDetailesModel(
      color: Color(0xff208CC8),
      title: 'Design service Design serviceDesign service',
      amount: '40%',
    ),
    IncomeDetailesModel(
      color: Color(0xff4EB7F2),
      title: 'Design product',
      amount: '25%',
    ),
    IncomeDetailesModel(
      color: Color(0xff064061),
      title: 'Product royalti',
      amount: '20%',
    ),
    IncomeDetailesModel(
      color: Color(0xffE2DECD),
      title: 'Other',
      amount: '22%',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          incomeItems.length,
          (index) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: IncomeDetailesItem(model: incomeItems[index]),
              )),
    );
  }
}
