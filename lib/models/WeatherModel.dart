class WeatherModel {
  final String? city, time, image, temperature, maxtemp, mintemp, state;

  WeatherModel(
      {required this.city,
      required this.time,
      required this.image,
      required this.temperature,
      required this.maxtemp,
      required this.mintemp,
      required this.state});
  factory WeatherModel.fromjson(Map<String, dynamic> jsondata) {
    return WeatherModel(
        city: jsondata['location']['name'],
        time: jsondata['location']['localtime'].toString(),
        image: jsondata['current']['condition']['icon'],
        temperature: jsondata['current']['temp_c'].toString(),
        maxtemp: jsondata['current']['feelslike_c'].toString(),
        mintemp: jsondata['current']['dewpoint_c'].toString(),
        state: jsondata['current']['condition']['text']);
  }
}
