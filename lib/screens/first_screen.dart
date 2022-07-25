import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapiapp/providers/weather_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Provider.of<WeatherProvider>(context,listen:false).getWeatherdata("london");
    return Scaffold(
      appBar: AppBar(
        title: Text("weather app"),
      ),
      body: Consumer(
        builder: (context,weatherpro,index){
        return  Column(
            children: [
              Text(weatherpro!.weatherModel.weather[0].main.toString() )
            ],
          );
        },
      ),
    );
  }
}



