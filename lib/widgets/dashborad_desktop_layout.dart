import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';

class DashboradDesktopLayout extends StatelessWidget {
  const DashboradDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: CustomDrawer());
  }
}
