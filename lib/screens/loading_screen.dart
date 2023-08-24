import 'package:clima/screens/location.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';

class LoadingScreenA extends StatefulWidget {
  const LoadingScreenA({Key? key}) : super(key: key);

  @override
  State<LoadingScreenA> createState() => _LoadingScreenAState();
}

class _LoadingScreenAState extends State<LoadingScreenA> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //getData();
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  void getData() async {
    Response response = await get(
        'https://samples.openweathermap.org/data/2.5/weather?lat=33.4818813&lon=73.0995412&appid=77619b3c7c20caf68e102ac81ed91db7');
    //https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=b6907d289e10d714a6e88b30761fae22
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold();
  }
}
