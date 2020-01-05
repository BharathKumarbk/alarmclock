import 'package:flutter/material.dart';

class SetScreen extends StatefulWidget {

 static String id = 'alarmscreen';



  @override
  _SetScreenState createState() => _SetScreenState();
}

class _SetScreenState extends State<SetScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
      ),
    );
  }
}