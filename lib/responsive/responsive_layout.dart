import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webeScreenLayout;
  const ResponsiveLayout(
      {Key? key,
      required this.mobileScreenLayout,
      required this.webeScreenLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth <= 768) {
        return mobileScreenLayout;
      }
      return webeScreenLayout;
    });
  }
}
