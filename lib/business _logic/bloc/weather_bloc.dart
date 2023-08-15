import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/weather_model.dart';
import '../../data/repository/weather_repository.dart';
import 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherRepo weatherRepo;
  WeatherBloc(this.weatherRepo) : super(WeatherIsNotSearched()) {
    on<FetchWeather>(_weatherIsLoading);
    on<ResetWeather>(_weatherIsNotSearched);
  }

  void _weatherIsLoading(FetchWeather event, Emitter<WeatherState> emit) async {
    emit(WeatherIsLoading());
    try {
      WeatherModel weather = await weatherRepo.getWeather(event.city);
      emit(WeatherIsLoaded(weather));
    } catch (_) {
      print(_);
      emit(WeatherIsNotLoaded());
    }
  }

  void _weatherIsNotSearched(
      ResetWeather event, Emitter<WeatherState> emit) async {
    emit(WeatherIsNotSearched());
  }
}
