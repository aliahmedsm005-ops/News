
import 'package:news/features/weather/data/model/weather_model.dart';

abstract class WeatherStates{}

class WeatherInitial extends WeatherStates{}

class WeatherLoading extends WeatherStates{}

class WeatherSuccess extends WeatherStates{
  WeatherModel responseModel;
  WeatherSuccess(this.responseModel);
}

class WeatherError extends WeatherStates{
  String error;
  WeatherError(this.error);

}