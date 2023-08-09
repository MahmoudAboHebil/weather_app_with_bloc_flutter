import 'package:http/http.dart' as http;

const apiKey = "3e186f0092055e392c60e2dd6a2c987d";
const openWeatherMapURL = "https://api.openweathermap.org/data/2.5/weather";

class WeatherServices {
  Future<String> getWeather(String city) async {
    final result = await http.Client().get(
        Uri.https("$openWeatherMapURL?q=$city&appid=$apiKey&units=metric"));

    if (result.statusCode != 200) throw Exception();
    return result.body;
  }
}
