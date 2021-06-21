import 'package:flutter/material.dart';
import 'package:hello_world/shared/app_colors.dart';

class HeadBar extends StatefulWidget {
  @override
  _HeadBarState createState() => _HeadBarState();
}

class _HeadBarState extends State<HeadBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            "Dashboard",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              navIcon(icon: Icons.search),
              navIcon(icon: Icons.send),
              navIcon(icon: Icons.notifications),
            ],
          )
        ],
      ),
    );
  }

  Widget navIcon({icon}) {
    return Icon(
      icon,
      color: AppColor.white,
    );
  }
}