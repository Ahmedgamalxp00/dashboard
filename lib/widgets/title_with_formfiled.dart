import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/widgets/custom_formfiled.dart';
import 'package:flutter/material.dart';

class TitleWithformFiled extends StatelessWidget {
  const TitleWithformFiled(
      {super.key, required this.title, required this.hint});
  final String title;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomFormFiled(
          hint: hint,
        )
      ],
    );
  }
}
