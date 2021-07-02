import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/shared/app_colors.dart';
import 'package:intl/intl.dart';

class CalenderWidget extends StatefulWidget {
  @override
  _CalenderWidgetState createState() => _CalenderWidgetState();
}

class _CalenderWidgetState extends State<CalenderWidget> {
  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "${DateFormat("MMM, yyyy").format(_dateTime)}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _dateTime =
                            DateTime(_dateTime.year, _dateTime.month - 1);
                      });
                    },
                    child: Icon(Icons.chevron_left, color: AppColor.black),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _dateTime =
                            DateTime(_dateTime.year, _dateTime.month + 1);
                      });
                    },
                    child: Icon(Icons.chevron_right, color: AppColor.black),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
