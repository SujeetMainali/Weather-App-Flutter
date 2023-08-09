import 'package:flutter/material.dart';
import 'package:weather_app/Components/additional_info.dart';
import 'package:weather_app/Components/weather_forecast.dart';
import 'package:weather_app/Components/weather_stat.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            debugPrint("refresh");
          }, icon: const Icon(Icons.refresh))
        ],
      ),
      body: const Padding(
        padding:  EdgeInsets.all(16.0),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [WeatherStatus(), WeatherForecast(), AdditionalInformation()],
        ),
      ),
    );
  }
}
