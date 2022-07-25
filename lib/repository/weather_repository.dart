
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weatherapiapp/model/weather_model.dart';
import 'package:weatherapiapp/utils/all_string.dart';
AllString allString=AllString();
class WeatherRepo{
  Future <WeatherModel> getDataFromApi(String city) async{
    var url= Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$city&appid=${allString.apiKey}");
   http.Response response=await http.get(url);
   if(response.statusCode==200){
   var weather=WeatherModel.fromJson(jsonDecode(response.body));
   return weather;
   }
   else{
    throw Exception("data not found");
   }
  }
  List<String> cityList=[
    "Dhaka",
    "london",
    "paris"
  ];
}