import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  Widget desktop;
  Widget mobile;

  ResponsiveLayout({required this.desktop, required this.mobile});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 1100) {
          return mobile;
        } else {
          return desktop;
        }
      },
    );
  }
}
