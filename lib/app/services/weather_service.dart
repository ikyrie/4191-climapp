// lib/services/weather_service.dart
import 'dart:convert';
import 'package:climapp/app/api_key.dart';
import 'package:http/http.dart' as http;

class WeatherService {
  final String baseUrl = 'https://api.hgbrasil.com/weather';

  Future<Map<String, dynamic>> getWeather(String city) async {
    final response = await http.get(Uri.parse('$baseUrl?key=$apiKey&city_name=$city&unit=metric'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}