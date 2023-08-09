import 'package:equatable/equatable.dart';

import '../../data/model/weather_model.dart';

class WeatherEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class FetchWeather extends WeatherEvent {
  final city;

  FetchWeather(this.city);

  @override
  // TODO: implement props
  List<Object> get props => [city];
}

class WeatherState extends Equatable {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class WeatherIsLoading extends WeatherState {}

class WeatherIsLoaded extends WeatherState {
  final weather;

  WeatherIsLoaded(this.weather);

  WeatherModel get getWeather => weather;

  @override
  // TODO: implement props
  List<Object> get props => [weather];
}

class WeatherIsNotLoaded extends WeatherState {}

class WeatherIsNotSearched extends WeatherState {}

class ResetWeather extends WeatherEvent {}
