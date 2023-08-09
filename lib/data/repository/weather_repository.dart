import 'package:http/http.dart' as http;
import 'dart:convert';

import '../model/weather_model.dart';

class WeatherRepo {
  WeatherModel parsedJson(final response) {
    final jsonDecoded = json.decode(response);

    final jsonWeather = jsonDecoded["main"];

    return WeatherModel.fromJson(jsonWeather);
  }
}
