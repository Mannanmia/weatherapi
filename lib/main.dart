import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapiapp/providers/weather_provider.dart';
import 'package:weatherapiapp/screens/first_screen.dart';

Future <void> main() async{
  runApp(
    MultiProvider(providers:[
      ChangeNotifierProvider<WeatherProvider>(create: (_)=>WeatherProvider()),
    ],
      child: MyApp(),),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Jadroo",
      home: HomeScreen
        (),
    );
  }
}

