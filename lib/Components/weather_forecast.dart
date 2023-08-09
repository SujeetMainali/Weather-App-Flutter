import 'package:flutter/material.dart';

class WeatherForecast extends StatefulWidget {
  const WeatherForecast({super.key});

  @override
  State<WeatherForecast> createState() => _WeatherForecastState();
}

class _WeatherForecastState extends State<WeatherForecast> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Weather Forecast",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              HourlyForecastCard(),
              HourlyForecastCard(),
              HourlyForecastCard(),
              HourlyForecastCard(),
              HourlyForecastCard()
            ],
          ),
        )
      ],
    );
  }
}

class HourlyForecastCard extends StatelessWidget {
  const HourlyForecastCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: const Column(
          children: [
            Text(
              "9:00",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Icon(
              Icons.cloud,
              size: 32,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "301.17",
              style: TextStyle(
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}
