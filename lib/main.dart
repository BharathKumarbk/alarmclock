import 'package:alarmclockfbapp/screens/alarmsetscreen.dart';
import 'package:alarmclockfbapp/screens/homescreen.dart';
import 'package:flutter/material.dart';

void main()=>runApp(AlarmApp());


class AlarmApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id:(context)=>HomeScreen(),
        SetScreen.id:(context)=>SetScreen(),
      },
    );
  }
}