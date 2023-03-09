import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:weather_learn/scr/core/network_helper.dart';
import 'package:weather_learn/scr/feature/wether_page/domain/weather_entity.dart';

const requ =
    'https://api.open-meteo.com/v1/forecast?latitude=41.64&longitude=41.63&current_weather=true&hourly=temperature_2m,relativehumidity_2m,windspeed_10m';
const req =
    'https://api.open-meteo.com/v1/forecast?latitude=41.65&longitude=41.64&hourly=temperature_2m,rain,weathercode&current_weather=true';

class WeatherRepository {
  Future<WeatherEntity> getWhether() async {
    final networkHelper = NetworkHelper(req);
    try {
      final Map<String, dynamic> jsonData = await networkHelper.getData();
      print(jsonData);
      return WeatherEntity.fromJson(jsonData);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }
}
