import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Cubits/GetWeatherCubit/GetWeatherStates.dart';
import 'package:weather_app/Cubits/GetWeatherCubit/WeatherCubit.dart';
import 'package:weather_app/views/SearchScreen.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SearchScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: Colors.blue,
        title: const Text(
          'Weather App',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: BlocBuilder<GetWeatherCubit, Getweatherstates>(
        builder: (context, state) {
          if (state is NoWeatherState) {
            return const NoWeatherBody();
          } else if (state is WeatherState) {
            return WeatherInfoBody();
          } else if (state is ErrorState){
            return const Center(
              child: Text('Error'),
            );
          }else{
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
