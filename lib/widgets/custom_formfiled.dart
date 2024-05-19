import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomFormFiled extends StatelessWidget {
  const CustomFormFiled({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          isDense: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          fillColor: const Color(0xffFAFAFA),
          filled: true,
          border: builedBorder(),
          enabledBorder: builedBorder(),
          focusedBorder: builedBorder(),
          hintText: hint,
          hintStyle: AppStyles.styleRegular16(context)
              .copyWith(color: const Color(0xffAAAAAA))),
    );
  }

  OutlineInputBorder builedBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(color: Color(0xffFAFAFA)),
        borderRadius: BorderRadius.circular(12));
  }
}
