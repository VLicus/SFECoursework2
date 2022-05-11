//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:sfe_cw2_api_tester/home_screen.dart';
import 'package:sfe_cw2_api_tester/weather_screen.dart';
import 'package:location/location.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<LocationPage> {
  Location location = new Location();
  late bool _serviceEnabled;
  late PermissionStatus _permissionGranted;
  late LocationData _locationData;
  bool _isListenLocation = false, _isGetLocation = false;

  @override
  Widget build(BuildContext context) => initWidget();
  Widget initWidget() {
    return Scaffold(
        appBar: AppBar(
          title: Text("Location Page"),
        ),
        body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () async {
                      _serviceEnabled = await location.serviceEnabled();
                      if (!_serviceEnabled) {
                        _serviceEnabled = await location.requestService();
                        if (_serviceEnabled) return;
                      }
                      _permissionGranted = await location.hasPermission();
                      if (_permissionGranted == PermissionStatus.denied) {
                        _permissionGranted = await location.requestPermission();
                        if (_permissionGranted != PermissionStatus.granted) return;
                      }
                      _locationData = await location.getLocation();
                      setState(() {
                        _isGetLocation = true;
                      });
                    },
                    child: Text('Get Location')),
                _isGetLocation
                    ? Text(
                    'Location: ${_locationData.latitude}/${_locationData.longitude}')
                    : ElevatedButton(
                    onPressed: () async {
                      _serviceEnabled = await location.serviceEnabled();
                      if (!_serviceEnabled) {
                        _serviceEnabled = await location.requestService();
                        if (_serviceEnabled) return;
                      }
                      _permissionGranted = await location.hasPermission();
                      if (_permissionGranted == PermissionStatus.denied) {
                        _permissionGranted = await location.requestPermission();
                        if (_permissionGranted != PermissionStatus.granted) {
                          return;
                        }
                      }

                      setState(() {
                        _isListenLocation = true;
                      });
                    },
                    child: const Text('Listen Location')),
                StreamBuilder(
                    stream: location.onLocationChanged,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        var data = snapshot.data as LocationData;
                        return Text(
                            'Location always change: \n ${data.latitude}/${data.longitude}');
                      } else {
                        return Center(
                          child: const CircularProgressIndicator(),
                        );
                      }
                    })
              ],
            )));
  }
}
