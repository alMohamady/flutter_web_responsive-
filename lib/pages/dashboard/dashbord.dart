import 'package:flutter/material.dart';
import 'package:hello_world/pages/dashboard/widget/headbar.dart';
import 'package:hello_world/shared/app_colors.dart';

class Dashbord extends StatefulWidget {
  @override
  _DashbordState createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: AppColor.bgColor, borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [HeadBar()],
      ),
    );
  }
}
