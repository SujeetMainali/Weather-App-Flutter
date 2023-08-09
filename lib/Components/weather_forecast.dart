import 'package:flutter/material.dart';

class WeatherForecast extends StatefulWidget {
  const WeatherForecast({super.key});

  @override
  State<WeatherForecast> createState() => _WeatherForecastState();
}

class _WeatherForecastState extends State<WeatherForecast> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      "Weather Forecast",
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
