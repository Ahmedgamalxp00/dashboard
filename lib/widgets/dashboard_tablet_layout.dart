import 'package:dashboard/widgets/custom_drower.dart';
import 'package:dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:flutter/material.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 2,
          child: CustomDrower(),
        ),
        Expanded(
          flex: 4,
          child: DashboardMobileLayout(),
        ),
      ],
    );
  }
}
