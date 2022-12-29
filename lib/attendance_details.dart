import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final detail_user_name;
  final detail_phone_number;
  final detail_check_in;

  const DetailsPage({Key? key, this.detail_user_name, this.detail_phone_number, this.detail_check_in}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text("Attendance Details"),

        elevation: 0,
        titleSpacing: 40.0,
        centerTitle: true,


      ),

      body: new ListView(
        children: <Widget>[
          new Container(
            child: ListTile(
              leading: new Text(widget.detail_user_name,
                  style: TextStyle(fontWeight: FontWeight.bold)),

              title: new Row(
                children: <Widget>[
                  Expanded(
                      child: new Text(widget.detail_phone_number),),
                ],
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(child:
               new Text(widget.detail_check_in),),
            ],
          ),

        ],
      ),
    );
  }
}
