import 'package:alarmclockfbapp/utilities/data.dart';
import 'package:flutter/material.dart';

class AlarmBox extends StatefulWidget {
  final Color color;
  final String time;
  final String phase;
  final int index;

  AlarmBox({this.color, this.phase, this.time,this.index});

  @override
  _AlarmBoxState createState() => _AlarmBoxState();
}

class _AlarmBoxState extends State<AlarmBox> {
  bool isChanged = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: isChanged?Colors.white:Colors.grey[300],
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12, blurRadius: 5.0, spreadRadius: 1.0)
            ]),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      
                        alarmTime.removeAt(widget.index);
                
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0))),
                    width: 40.0,
                    height: 50.0,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'X',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Switch(
                  value: isChanged,
                  onChanged: (value) {
                    setState(() {
                      isChanged = value;
                      
                    });
                  },
                  activeColor: Colors.green,
                  activeTrackColor: Colors.grey[200],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "${widget.time}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 40.0,
                        color: Colors.black),
                  ),
                  Text(
                    "${widget.phase}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 40.0,
                        color: Colors.black),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
