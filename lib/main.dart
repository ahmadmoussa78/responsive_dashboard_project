import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/dashborad_view.dart';

class ResponsiveDashborad extends StatelessWidget {
  const ResponsiveDashborad({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DashboradView());
  }
}
