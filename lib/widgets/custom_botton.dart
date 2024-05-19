import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomBottn extends StatelessWidget {
  const CustomBottn(
      {super.key,
      required this.title,
      required this.color,
      required this.backgroundColor});
  final String title;
  final Color color;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {},
        child: Text(
          title,
          style: AppStyles.styleSemiBold18(context).copyWith(color: color),
        ));
  }
}
