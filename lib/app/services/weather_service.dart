// lib/services/weather_service.dart
import 'dart:convert';
import 'package:climapp/app/consts/enums.dart';
import 'package:climapp/app/models/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherService {
  final String baseUrl = Environment.production.baseUrl;
  final String apiKey = Environment.production.apiKey;

  Future<WeatherModel> getWeather(String city) async {
    final response = await http.get(Uri.parse('$baseUrl?key=$apiKey&city_name=$city&unit=metric'));

    if (response.statusCode == 200) {
      return WeatherModel.fromJson(json.decode(response.body)['results']);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}