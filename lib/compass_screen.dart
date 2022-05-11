import 'package:flutter/material.dart';
import 'main.dart';
import 'package:sfe_cw2_api_tester/home_screen.dart';
//import 'package:compasstools/compasstools.dart';
import 'package:flutter/services.dart';

class CompassPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<CompassPage> {
  @override
  Widget build(BuildContext context) => initWidget();

  Widget initWidget() {
    return Scaffold(
      appBar: AppBar(
        title: Text("Compass"),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset("assets/compass.png"),
            ),
            Container(
              margin: EdgeInsets.only(top: 3, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Back to Home page",
                        style:
                        TextStyle(color: Color.fromARGB(255, 31, 45, 245)),
                      ),
                    ),
                    onTap: () {
                      // Write Tap Code Here.
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// class _MyAppState extends State<MyApp> {
//   int _haveSensor;
//   String sensorType;
//
//   @override
//   void initState() {
//     super.initState();
//     checkDeviceSensors();
//   }
//
//   Future<void> checkDeviceSensors() async {
//
//     int _haveSensor;
//     String sensorType;
//
//
//     @override
//     void initState() {
//       super.initState();
//       checkDeviceSensors();
//     }
//
//
//     Future<void> checkDeviceSensors() async {
//       int haveSensor;
//
//
//
//
//       try {
//         haveSensor = await Compasstools.checkSensors;
//
//
//         switch (haveSensor) {
//           case 0:
//             {
//               sensorType = "No sensors for compass!";
//             }
//             break;
//
//
//           case 1:
//             {
//               sensorType = "Accelerometer + Magnetometer!";
//             }
//             break;
//
//
//           case 2:
//             {
//               sensorType = "Gyroscope!";
//             }
//             break;
//
//
//           default:
//             {
//               sensorType = "Error!";
//             }
//             break;
//         }
//       } on Exception {
//
//
//       }
//       if (!mounted) return;
//
//
//       setState(() {
//         _haveSensor = haveSensor;
//       });
//     }
//
//     @override
//     Widget build(BuildContext context) {
//       return MaterialApp(
//           home: Scaffold(
//             appBar: AppBar(
//               title: const Text('Compass App!'),
//             ),
//             body: new Container(
//               child: Column(
//                 children: <Widget>[StreamBuilder(
//                   stream: Compasstools.azimuthStream,
//                   builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
//                     if (snapshot.hasData) {
//                       return Padding(
//                         padding: EdgeInsets.all(20),
//                         child: Center(
//                             child: new RotationTransition(
//                               turns: new AlwaysStoppedAnimation(
//                                   -snapshot.data / 360),
//                               child: Image.asset("assets/compass.png"),
//                             )
//                         ),
//                       );
//                     }
//                     else
//                       return Text("Error in stream!");
//
//
//                   },
//                 ),
//                   Text("SensorType " + sensorType),
//                 ],
//               ),
//             ),
//           )
//       );
//     }
//
//   }
// }
