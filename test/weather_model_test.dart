import 'package:flutter_test/flutter_test.dart';
import 'package:climapp/app/models/weather_model.dart';

void main() {
  group('WeatherModel', () {
    test('should create a WeatherModel from JSON', () {
      final json = {
        'temp': 25,
        'date': '2023-10-01',
        'time': '12:00',
        'condition_code': '01',
        'description': 'Clear',
        'currently': 'Clear',
        'cid': '123',
        'city': 'CityName',
        'img_id': 'img123',
        'humidity': 60,
        'cloudiness': 0.0,
        'rain': 0.0,
        'wind_speedy': '10 km/h',
        'wind_direction': 180,
        'wind_cardinal': 'S',
        'sunrise': '06:00',
        'sunset': '18:00',
        'moon_phase': 'Waxing Crescent',
        'condition_slug': 'clear',
        'city_name': 'CityName',
        'timezone': 'UTC',
        'forecast': []
      };

      final weatherModel = WeatherModel.fromJson(json);

      expect(weatherModel.temp, 25);
      expect(weatherModel.date, '2023-10-01');
      expect(weatherModel.time, '12:00');
      expect(weatherModel.conditionCode, '01');
      expect(weatherModel.description, 'Clear');
      expect(weatherModel.currently, 'Clear');
      expect(weatherModel.cid, '123');
      expect(weatherModel.city, 'CityName');
      expect(weatherModel.imgId, 'img123');
      expect(weatherModel.humidity, 60);
      expect(weatherModel.cloudiness, 0.0);
      expect(weatherModel.rain, 0.0);
      expect(weatherModel.windSpeedy, '10 km/h');
      expect(weatherModel.windDirection, 180);
      expect(weatherModel.windCardinal, 'S');
      expect(weatherModel.sunrise, '06:00');
      expect(weatherModel.sunset, '18:00');
      expect(weatherModel.moonPhase, 'Waxing Crescent');
      expect(weatherModel.conditionSlug, 'clear');
      expect(weatherModel.cityName, 'CityName');
      expect(weatherModel.timezone, 'UTC');
      expect(weatherModel.forecast, []);
    });
  });
}