import 'package:flutter/material.dart';
// screens
import 'package:clima/screens/city_screen.dart';
import 'package:clima/screens/loading_screen.dart';
import 'package:clima/screens/location_screen.dart';
//services
import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import 'package:clima/services/weather.dart';
//utilities
import 'package:clima/utilities/constants.dart'; //

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreenA(),
    );
  }
}
