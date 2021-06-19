import 'package:flutter/material.dart';
import 'package:hello_world/pages/widgets/side_bar_menu.dart';
import 'package:hello_world/shared/app_colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgSideMenu,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Side Menu
            Expanded(child: SideBar()),

            //Main Body
            Expanded(flex: 4, child: Container())
          ],
        ),
      ),
    );
  }
}
