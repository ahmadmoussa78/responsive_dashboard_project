import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dashboard/widgets/dashboard_tablet_layout.dart';
import 'package:responsive_dashboard/widgets/dashborad_desktop_layout.dart';

class DashboradView extends StatelessWidget {
  const DashboradView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              backgroundColor: const Color(0xffFAFAFA),
              elevation: 0,
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu),
              ),
            )
          : null,

      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletlayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboradDesktopLayout(),
      ),
    );
  }
}
