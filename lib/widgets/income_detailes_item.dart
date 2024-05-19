import 'package:dashboard/models/income_detailes_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class IncomeDetailesItem extends StatelessWidget {
  const IncomeDetailesItem({super.key, required this.model});
  final IncomeDetailesModel model;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: model.color,
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: Text(model.title,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: AppStyles.styleRegular16(context)),
        ),
        const SizedBox(
          width: 12,
        ),
        Text(
          model.amount,
          style: AppStyles.styleMedium16(context)
              .copyWith(color: const Color(0xff208CC8)),
        )
      ],
    );
  }
}
