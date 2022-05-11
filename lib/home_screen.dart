import 'package:flutter/material.dart';
import 'package:sfe_cw2_api_tester/compass_screen.dart';
import 'package:sfe_cw2_api_tester/fire_index_screen.dart';
import 'package:sfe_cw2_api_tester/weather_screen.dart';

import 'location.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) => initWidget();

  Widget initWidget() {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(0)),
            color: Colors.green,
            gradient: LinearGradient(
              colors: [(Colors.green), Colors.green],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Text(
                  "",
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20, top: 20),
                alignment: Alignment.bottomRight,
                child: Text(
                  "Rangers Tool Home Screen",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              )
            ],
          )),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FireIndex(),
                ));
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20, right: 20, top: 70),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [(Colors.green), Colors.green],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight),
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: Text(
              "Fire Index Calculator",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LocationPage(),
                ));
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20, right: 20, top: 70),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [(Colors.green), Colors.green],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight),
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: Text(
              "Location",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),

        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20, right: 20, top: 70),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [(Colors.green), Colors.green],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight),
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: Text(
              "Weather Page",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CompassPage(),
                ));
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20, right: 20, top: 70),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [(Colors.green), Colors.green],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight),
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: Text(
              "Compass",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("  "),
              GestureDetector(
                child: Text(
                  "",
                  style: TextStyle(color: Colors.green),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        )
      ],
    )));
  }
}
