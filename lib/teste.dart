import 'package:climapp/app/injection/injection_container.dart';
import 'package:climapp/app/services/weather_service.dart';
import 'package:get_it/get_it.dart';

void main() async {
  setup();
  GetIt getIt = GetIt.instance;
  final WeatherService service = getIt.get<WeatherService>();
  final result = await service.getWeather("Toledo");
  print(result.cityName);
}