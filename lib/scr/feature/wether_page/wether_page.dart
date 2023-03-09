import 'package:flutter/material.dart';
import 'package:weather_learn/scr/feature/wether_page/data/weather_repository.dart';
import 'package:weather_learn/scr/feature/wether_page/domain/weather_entity.dart';

class WetherPage extends StatefulWidget {
  const WetherPage({Key? key}) : super(key: key);

  @override
  State<WetherPage> createState() => _WetherPageState();
}

class _WetherPageState extends State<WetherPage> {
  final WeatherRepository weatherRepository = WeatherRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Whether'), centerTitle: true),
      body: Column(
        children: [
          FutureBuilder<WeatherEntity>(
            future: weatherRepository.getWhether(),
            initialData: WeatherEntity(
              temperature: 0,
              humidity: 0,
            ),
            builder: (c, snapshot) {
              if (snapshot.hasError) {
                return Text('I has Error ${snapshot.error}');
              }
              final data = snapshot.data;
              return Text("themperature ${data?.temperature ?? 0}");
            },
          ),
        ],
      ),
    );
  }
}
