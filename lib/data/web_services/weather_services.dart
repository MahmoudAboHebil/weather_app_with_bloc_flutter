import 'package:http/http.dart' as http;

class WeatherServices {
  Future<String> getWeather(String city) async {
    final result = await http.Client().get(Uri.https(
        "https://api.openweathermap.org/data/2.5/weather?q=$city&APPID=3e186f0092055e392c60e2dd6a2c987d"));

    if (result.statusCode != 200) throw Exception();
    return result.body;
  }
}
