

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/Components/secrets.dart';

class APICall {
  String cityName = 'Kathmandu';
  late double temp;
 Future<Map<String, dynamic>> getCurrentWeather() async {
   try {
      final response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/forecast?q=$cityName&APPID=$secretKey'));

    if (response.statusCode != 200) {
      // Request was successful
      // print('Response body: ${response.body}');
      throw "an unexpected err occured";
      // print(jsonDecode(response.body));
      // print(data['list'][0]['main']['temp']);
    }
          final data = jsonDecode(response.body);
          return data;

   } catch (e) {
     throw e.toString();
   }
  }
}
