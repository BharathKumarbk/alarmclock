import 'package:alarmclockfbapp/utilities/data.dart';
import 'package:alarmclockfbapp/utilities/reuse.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String id = "homescreen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isChanged = true;
  


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green,
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          elevation: 0.0,
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                         boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5.0,
                                  spreadRadius: 1.0)
                            ]
                        ),
                    width: double.infinity,
                    child: Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2,
                        height: 200.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(200.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5.0,
                                  spreadRadius: 1.0)
                            ]),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                      itemCount: alarmTime.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                      itemBuilder: (BuildContext context,int index){
                        return alarmTime[index];
                      },
                    ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
