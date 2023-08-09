import 'package:http/http.dart' as http;
import 'dart:convert';

import '../model/weather_model.dart';
import '../web_services/weather_services.dart';

class WeatherRepo {
  late WeatherServices weatherServices = WeatherServices();
  Future<WeatherModel> getWeather(final cityName) async {
    final response = await weatherServices.getWeather(cityName);
    final jsonDecoded = json.decode(response);

    final jsonWeather = jsonDecoded["main"];

    return WeatherModel.fromJson(jsonWeather);
  }
}
