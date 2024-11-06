import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Cubits/GetWeatherCubit/GetWeatherStates.dart';
import 'package:weather_app/Service/GetWeatherService.dart';
import 'package:weather_app/models/WeatherModel.dart';

class GetWeatherCubit extends Cubit<Getweatherstates>  {
  GetWeatherCubit() : super(NoWeatherState());
  late WeatherModel weatherModel;
  getweather ({required String city})async{
    try{
    weatherModel=await GetWeatherService().getWeather(city: city);
    emit(WeatherState());
    }catch(e){
      emit(ErrorState());
    }
  }


}