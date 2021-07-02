import 'package:flutter/material.dart';
import 'package:hello_world/shared/app_colors.dart';

class TableOfEmpData extends StatefulWidget {
  @override
  _TableOfEmpDataState createState() => _TableOfEmpDataState();
}

class _TableOfEmpDataState extends State<TableOfEmpData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Emplyees Data",
                style: TextStyle(
                  color: AppColor.black,
                  fontSize: 22,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppColor.mainColor,
                    borderRadius: BorderRadius.circular(100)),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  "Go To Table",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: AppColor.black),
                ),
              )
            ],
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.grey, width: 0.5))),
                    children: [
                      tableHeader("Emp Name"),
                      tableHeader("Position"),
                      tableHeader("Status"),
                      tableHeader(""),
                    ]),
              ])
        ],
      ),
    );
  }

  Widget tableHeader(text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Text(text,
          style: TextStyle(fontWeight: FontWeight.bold, color: AppColor.black)),
    );
  }
}
