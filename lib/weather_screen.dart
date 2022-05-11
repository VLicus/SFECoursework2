import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(
      MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<dynamic> getUserData() async {
    var response = await http.get(Uri.parse(
        'https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&hourly=temperature_2m'));

    var jsonData = jsonDecode(response.body);
    return jsonData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Page'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Card(
          child: FutureBuilder(
            future: getUserData(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                var hourly = snapshot.data['hourly'];

                return ListTile(
                  title: Text(
                    "time: ${hourly['time'][0]} - temperature_2m: ${hourly['temperature_2m'][0]}",
                  ),
                  subtitle: Text(
                    "latitude: ${snapshot.data['latitude']}",
                  ),
                  trailing: Text(
                    "longitude: ${snapshot.data['longitude']}",
                  ),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}

getUserData() {}

class User {
  final String? hourly,
      time,
      temperature_2m,
      longitude,
      generationtime_m,
      hourly_units,
      latitude;

  User(this.longitude, this.latitude, this.hourly, this.time,
      this.temperature_2m, this.generationtime_m, this.hourly_units);
}
