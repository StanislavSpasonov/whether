import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_learn/scr/feature/wether_page/wether_page.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WetherPage(),
    );
  }
}
