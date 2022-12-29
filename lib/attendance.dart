import 'package:flutter/material.dart';
import 'package:intern/attendance_list.dart';

class Attendance extends StatefulWidget {
  const Attendance({Key? key}) : super(key: key);

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: (){},),
        title: Text("Attendance List"),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: (){},),
          // IconButton(icon: Icon(Icons.), onPressed: (){},),
        ],
        elevation: 0,
        titleSpacing: 40.0,
        centerTitle: true,


      ),
      body: new Attendance_list(),
    );
  }
}
