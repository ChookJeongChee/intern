import 'package:flutter/material.dart';
import 'package:intern/attendance_details.dart';

class Attendance_list extends StatefulWidget {
  const Attendance_list({Key? key}) : super(key: key);

  @override
  State<Attendance_list> createState() => _Attendance_listState();
}

class _Attendance_listState extends State<Attendance_list> {
  var Attendance_on_the_list = [
    {
      "user": "Chan Saw Lin",
      "phone": "0152131113",
      "check-in": "2020-06-30 16:10:05",
    },
    {
      "user": "Lee Saw Loy",
      "phone": "0161231346",
      "check-in": "2020-07-11 15:39:59",
    },
    {
      "user": "Khaw Tong Lin",
      "phone": "0158398109",
      "check-in": "2020-08-19 11:10:18",
    },
    {
      "user": "Lim Kok Lin",
      "phone": "0168279101",
      "check-in": "2020-08-19 11:11:35",
    },
    {
      "user": "Low Jun Wei",
      "phone": "0112731912",
      "check-in": "2020-08-15 13:00:05",
    },
    {
      "user": "Yong Weng Kai",
      "phone": "0172332743",
      "check-in": "2020-07-31 18:10:11",
    },
    {
      "user": "Jayden Lee",
      "phone": "0191236439",
      "check-in": "2020-08-22 08:10:38",
    },
    {
      "user": "Kong Kah Yan",
      "phone": "0111931233",
      "check-in": "2020-07-11 12:00:00",
    },
    {
      "user": "Jasmine Lau",
      "phone": "0162879190",
      "check-in": "2020-08-01 12:10:05",
    },
    {
      "user": "Chan Saw Lin",
      "phone": "016783239",
      "check-in": "2020-08-23 11:59:05",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Attendance_on_the_list.length,
        itemBuilder: (context, index) {
          return Single_attendance_list(
            user_name: Attendance_on_the_list[index]["user"],
            phone_number: Attendance_on_the_list[index]["phone"],
            check_in_time: Attendance_on_the_list[index]["check-in"],
          );
        });
  }
}

class Single_attendance_list extends StatelessWidget {
  final user_name;
  final phone_number;
  final check_in_time;

  const Single_attendance_list(
      {super.key,
      required this.user_name,
      required this.phone_number,
      required this.check_in_time});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          onTap: () => Navigator.of(context).push(
              new MaterialPageRoute(builder: (context) => new DetailsPage(
                detail_user_name: user_name, detail_phone_number: phone_number, detail_check_in: check_in_time
              ))),
          title: new Text(user_name),
          subtitle: new Column(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: new Text("Phone number:"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: new Text(phone_number),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
