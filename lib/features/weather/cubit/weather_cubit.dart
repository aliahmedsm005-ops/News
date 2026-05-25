
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/weather/cubit/weather_state.dart';
import 'package:news/features/weather/data/repo/weather_repo.dart';

class WeatherCubit extends Cubit<WeatherStates>{
  WeatherCubit(): super(WeatherInitial());
  static WeatherCubit get(context)=> BlocProvider.of(context);

  WeatherRepo repo = WeatherRepo();
  fetchWeather() async{
    emit(WeatherLoading());
    var result = await repo.fetchWeather();
    result.fold(
            (error) {
          emit(WeatherError(error));
        },
            (model){
          emit(WeatherSuccess(model));
        }
    );
  }


}