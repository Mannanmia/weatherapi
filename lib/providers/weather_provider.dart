import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapiapp/model/weather_model.dart';
import 'package:weatherapiapp/repository/weather_repository.dart';

class WeatherProvider with ChangeNotifier{
  WeatherModel _weatherModel=WeatherModel();
  WeatherRepo weatherRepo=WeatherRepo();

  WeatherModel get weatherModel => _weatherModel;
  getWeatherdata(String cityName)async{
    _weatherModel= await weatherRepo.getDataFromApi(cityName);
    notifyListeners();
  }
}