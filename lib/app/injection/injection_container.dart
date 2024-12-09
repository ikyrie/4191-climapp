import 'package:climapp/app/adpaters/http_adapter.dart';
import 'package:climapp/app/services/weather_service.dart';
import 'package:climapp/app/store/weather_store.dart';
import 'package:http/http.dart' as http;
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<IHttpAdapter>(() => HttpClient(http.Client()));
  getIt.registerLazySingleton<WeatherService>(() => WeatherService(getIt.get<IHttpAdapter>()));
  getIt.registerLazySingleton<WeatherStore>(() => WeatherStore());
}