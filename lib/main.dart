import 'package:flutter/material.dart';
import 'package:intern/attendance.dart';
import 'package:intern/attendance_list.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Attendance System',
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: Attendance()

    );
  }
}
