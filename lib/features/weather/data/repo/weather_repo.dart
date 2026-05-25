import 'package:dartz/dartz.dart';
import 'package:news/features/weather/data/model/weather_model.dart';
import '../../../../core/network/api_helper.dart';
import '../../../../core/network/api_response.dart';
import '../../../../core/network/end_points.dart';

class WeatherRepo {
  final WeatherAPIHelper _apiHelper;

  WeatherRepo({WeatherAPIHelper? apiHelper})
      : _apiHelper = apiHelper ?? WeatherAPIHelper();

  Future<Either<String, WeatherModel>> fetchWeather({
    required double lat,
    required double lon,
  }) async {
    try {
      final result = await _apiHelper.getRequest(
        endPoint: EndPoints.weather,
        queryParams: {
          'lat': lat,
          'lon': lon,
        },
      );

      if (result.status) {
        final responseModel =
        WeatherModel.fromJson(result.data as Map<String, dynamic>);
        return Right(responseModel);
      } else {
        return Left(result.message);
      }
    } catch (e) {
      return Left(ApiResponse.fromError(e).message);
    }
  }
}