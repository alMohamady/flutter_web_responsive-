import 'package:flutter/material.dart';
import 'package:hello_world/shared/app_colors.dart';

class Notfication extends StatefulWidget {
  @override
  _NotficationState createState() => _NotficationState();
}

class _NotficationState extends State<Notfication> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.mainColor, borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(TextSpan(
                  style: TextStyle(fontSize: 16, color: AppColor.black),
                  children: [
                    TextSpan(text: "Hello World"),
                    TextSpan(
                        text: "New Web site",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ]))
            ],
          )
        ],
      ),
    );
  }
}
