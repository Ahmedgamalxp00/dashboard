import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Income', style: AppStyles.styleSemiBold20(context)),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xffF1F1F1))),
            child: Row(
              children: [
                Text('Monthly', style: AppStyles.styleRegular16(context)),
                const SizedBox(width: 8),
                Transform.rotate(
                  angle: 90 * 3.14 / 180,
                  child: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xff064061),
                    size: 16,
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
