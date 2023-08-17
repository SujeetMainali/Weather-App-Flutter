// import 'dart:convert';
import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:weather_app/Components/api_call.dart';

class WeatherStatus extends StatefulWidget {
  const WeatherStatus({super.key});

  @override
  State<WeatherStatus> createState() => _WeatherStatusState();
}

class _WeatherStatusState extends State<WeatherStatus> {
  final APICall apiCall = APICall();
    late Future<Map<String, dynamic>> weather;

  // late final weatherData;
  // double temp = 0;

  @override
  void initState() {
    super.initState();
    weather = apiCall.getCurrentWeather();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: apiCall.getCurrentWeather(),
      builder: (context, snapshot) {
        // print(snapshot);
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator.adaptive());
        }
        if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }
        final data = snapshot.data!;
        print(data["list"]);

        final currentWeatherData = data['list'][0];

        final  currentTempK = currentWeatherData['main']['temp'];
        final  currentTempC = (currentTempK - 273.15).toStringAsFixed(2);
        // print(currentTempK);
        final currentSky = currentWeatherData['weather'][0]['main'];
        // final currentPressure = currentWeatherData['main']['pressure'];
        // final currentWindSpeed = currentWeatherData['wind']['speed'];
        // final currentHumidity = currentWeatherData['main']['humidity'];
        return SizedBox(
          width: double.infinity,
          child: Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        '$currentTempC °C',
                        style: const TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                       Icon(
                        currentSky == 'Rain' || currentSky == 'Clouds' ? Icons.cloud : Icons.sunny,
                        size: 60,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                       Text(
                         currentSky,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
