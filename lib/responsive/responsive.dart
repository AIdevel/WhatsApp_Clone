import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  const ResponsiveLayout(
      {super.key,
      required this.mobileScreenLayout,
      required this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    // specifying the 'constraints' mean using in whole class
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxHeight > 900) {
        return webScreenLayout;
      }
      return mobileScreenLayout;
    });
  }
}
