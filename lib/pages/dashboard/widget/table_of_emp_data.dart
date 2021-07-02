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
                // table head
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
                //table data
                tableRow(context,
                    name: "al mohamady",
                    image: "assets/user2.jpg",
                    position: "programmer",
                    status: "Active"),
                tableRow(context,
                    name: "Saly",
                    image: "assets/user1.jpg",
                    position: "tester",
                    status: "Active"),
                tableRow(context,
                    name: "john",
                    image: "assets/user3.jpg",
                    position: "worker",
                    status: "Active"),
                tableRow(context,
                    name: "sadasda",
                    image: "assets/user4.jpg",
                    position: "nothing",
                    status: "Active"),
              ])
        ],
      ),
    );
  }

  TableRow tableRow(context, {name, image, position, status}) {
    return TableRow(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(1000),
                  child: Image.asset(
                    image,
                    width: 30,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(name)
              ],
            ),
          ),
          Text(position),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: AppColor.mainColor),
                height: 10,
                width: 10,
              ),
              SizedBox(
                width: 10,
              ),
              Text(status),
            ],
          ),
          Image.asset(
            "assets/more.png",
            color: Colors.grey,
            height: 30,
          )
        ]);
  }

  Widget tableHeader(text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Text(text,
          style: TextStyle(fontWeight: FontWeight.bold, color: AppColor.black)),
    );
  }
}
