import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScrenLayout;
  final Widget webScreenLayout;

  const ResponsiveLayout(
      {super.key,
      required this.mobileScrenLayout,
      required this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          return webScreenLayout;
          //WEB SCREEN
        }
        return mobileScrenLayout;
      },
    );
  }
}
