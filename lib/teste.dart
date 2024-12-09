import 'package:climapp/app/adpaters/http_adapter.dart';
import 'package:climapp/app/services/weather_service.dart';
import 'package:http/http.dart' as http;

void main() async {
  final IHttpAdapter client = HttpClient(http.Client());
  final WeatherService service = WeatherService(client);
  final result = await service.getWeather("Toledo");
  print(result.cityName);
}