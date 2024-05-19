import 'package:dashboard/widgets/all_expences_items_list.dart';
import 'package:dashboard/widgets/all_expences_title.dart';
import 'package:flutter/material.dart';

class AllExpences extends StatelessWidget {
  const AllExpences({super.key});

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
          AllExpencesTitle(),
          SizedBox(height: 16),
          AllExpencesItemsList(),
        ],
      ),
    );
  }
}
