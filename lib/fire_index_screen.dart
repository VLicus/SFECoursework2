import 'package:flutter/material.dart';
import 'package:sfe_cw2_api_tester/home_screen.dart';

class FireIndex extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<FireIndex> {
  @override
  Widget build(BuildContext context) => initWidget();
  Widget initWidget() {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Container(
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(0)),
            color: Colors.green,
            gradient: LinearGradient(
              colors: [
                (Colors.green),
                Colors.green,
              ],
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
                  "Fire Index Calculator",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              )
            ],
          )),
        ),
        Container(
          margin: EdgeInsets.only(top: 3, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(" "),
              GestureDetector(
                child: Text(
                  "Back to Home page",
                  style: TextStyle(color: Color.fromARGB(255, 31, 45, 245)),
                ),
                onTap: () {
                  // Write Tap Code Here.
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

class EventChannel extends StatefulWidget {
  const EventChannel({Key? key}) : super(key: key);

  @override
  State<EventChannel> createState() => _EventChannelState();
}

class _EventChannelState extends State<EventChannel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Event App"
        ),
      ),
      body: Center(
        child: Image.asset("assets.compass.png"),
      ),
    );
  }
}
