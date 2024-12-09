import 'package:climapp/app/models/forecast_model.dart';

class WeatherModel {
  final int temp;
  final String date;
  final String time;
  final String conditionCode;
  final String description;
  final String currently;
  final String cid;
  final String city;
  final String imgId;
  final int humidity;
  final double cloudiness;
  final double rain;
  final String windSpeedy;
  final int windDirection;
  final String windCardinal;
  final String sunrise;
  final String sunset;
  final String moonPhase;
  final String conditionSlug;
  final String cityName;
  final String timezone;
  final List<Forecast> forecast;

  WeatherModel({
    required this.temp,
    required this.date,
    required this.time,
    required this.conditionCode,
    required this.description,
    required this.currently,
    required this.cid,
    required this.city,
    required this.imgId,
    required this.humidity,
    required this.cloudiness,
    required this.rain,
    required this.windSpeedy,
    required this.windDirection,
    required this.windCardinal,
    required this.sunrise,
    required this.sunset,
    required this.moonPhase,
    required this.conditionSlug,
    required this.cityName,
    required this.timezone,
    required this.forecast,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    var forecastList = json['forecast'] as List;
    List<Forecast> forecast = forecastList.map((i) => Forecast.fromJson(i)).toList();

    return WeatherModel(
      temp: json['temp'],
      date: json['date'],
      time: json['time'],
      conditionCode: json['condition_code'],
      description: json['description'],
      currently: json['currently'],
      cid: json['cid'],
      city: json['city'],
      imgId: json['img_id'],
      humidity: json['humidity'],
      cloudiness: json['cloudiness'],
      rain: json['rain'],
      windSpeedy: json['wind_speedy'],
      windDirection: json['wind_direction'],
      windCardinal: json['wind_cardinal'],
      sunrise: json['sunrise'],
      sunset: json['sunset'],
      moonPhase: json['moon_phase'],
      conditionSlug: json['condition_slug'],
      cityName: json['city_name'],
      timezone: json['timezone'],
      forecast: forecast,
    );
  }
}

