import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/widgets/adaptive_layout_widget.dart';
import 'package:dashboard/widgets/custom_drower.dart';
import 'package:dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:dashboard/widgets/dashboard_tablet_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.of(context).size.width < 700
          ? AppBar(
              scrolledUnderElevation: 0,
              backgroundColor: const Color(0xffF7F9FA),
              leadingWidth: 60,
              leading: Row(
                children: [
                  const SizedBox(width: 20),
                  IconButton(
                    onPressed: () {
                      scaffoldKey.currentState!.openDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                      color: Color(0xFF064061),
                    ),
                  ),
                ],
              ),
              elevation: 0,
              title: Text(
                'Dashboard',
                style: AppStyles.styleSemiBold20(context),
              ),
            )
          : null,
      drawer:
          MediaQuery.of(context).size.width < 700 ? const CustomDrower() : null,
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
