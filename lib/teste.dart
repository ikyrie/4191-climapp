import 'package:climapp/app/services/weather_service.dart';

void main() async {
  final WeatherService service = WeatherService();
  final result = await service.getWeather("Toledo");
  print(result.cityName);
}