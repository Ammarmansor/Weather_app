import 'package:dio/dio.dart';
import 'package:weather_app/models/WeatherModel.dart';

class GetWeatherService {

final String apiKey = '95fe81672a584c3ea74124549242802';
final String baseUrl = 'https://api.weatherapi.com/v1/current.json';
final dio = Dio();

Future<WeatherModel> getWeather({required String city}) async {
  try{
  final response = await dio.get('$baseUrl?key=$apiKey&q=$city');
  Map< String, dynamic> jsondata = response.data ;
  return WeatherModel.fromjson(jsondata);
  }catch(e){
  print(e.toString());
  throw e;
  }
}
}