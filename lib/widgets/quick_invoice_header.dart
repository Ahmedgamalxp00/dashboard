import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Quick Invoice', style: AppStyles.styleSemiBold20(context)),
        const CircleAvatar(
          radius: 24,
          backgroundColor: Color(0xffFAFAFA),
          child: Icon(
            Icons.add,
            color: Color(0xff4EB7F2),
            size: 18,
          ),
        )
      ],
    );
  }
}
