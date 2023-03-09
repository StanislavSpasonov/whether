class WeatherEntity {
  final double temperature;
  final double humidity;

  WeatherEntity({required this.temperature, required this.humidity});
  WeatherEntity.fromJson(Map<String, dynamic> json)
      : temperature = json['current_weather']['temperature'],
        humidity = json['current_weather']['temperature'];
}
