import 'package:flutter/material.dart';
import 'package:weather_app/views/home_view.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the home screen after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeView()),  // Replace with your actual home screen
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf6f5f0),
      body: Center(
        child: Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBa77Vxthi4TWXEE8C8--e0Q14xQaO_JDbmsbcgnaGzK8Rzy3gjbixI_OAvJbYTVc5UX8&usqp=CAU',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,)
      ),
    );
  }
}
