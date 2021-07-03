import 'package:flutter/material.dart';

class AppResponsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const AppResponsive(
      {Key key, @required this.mobile, this.tablet, @required this.desktop})
      : super(key: key);

  static bool isMobile(context) => MediaQuery.of(context).size.width < 900;
  static bool isTablet(context) => MediaQuery.of(context).size.width < 900;
  static bool isDesktop(context) => MediaQuery.of(context).size.width < 900;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
