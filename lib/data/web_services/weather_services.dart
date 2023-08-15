import 'package:http/http.dart' as http;

const apiKey = "3e186f0092055e392c60e2dd6a2c987d";
const openWeatherMapURL = "https://api.openweathermap.org/data/2.5/weather";

class WeatherServices {
  Future<String> getWeather(String city) async {
    http.Response response = await http
        .get(Uri.parse("$openWeatherMapURL?q=$city&appid=$apiKey&units"));

    if (response.statusCode != 200) throw Exception();
    print('################################');
    print(response.body);
    return response.body;
  }
}
