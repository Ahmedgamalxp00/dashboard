import 'package:flutter/material.dart';

class IndecatorDot extends StatelessWidget {
  const IndecatorDot({super.key, this.isActive = false});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isActive ? 32 : 8,
      height: 8,
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isActive ? const Color(0xff4EB7F2) : const Color(0xffE8E8E8)),
    );
  }
}
