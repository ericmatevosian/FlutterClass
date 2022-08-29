import 'dart:convert';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;


class LocationWeather{
  double? Lon;
  double? Lan;
  String url="https://api.openweathermap.org/data/2.5/weather?lat=35.73810&lon=51.47011&appid=f39367a4a07396060d0f2503de8b70f3";
  String cityName="";
  double Temperature=0;



  Future<Position> determineLocation() async{

    bool LocationServiceEnabled;
    LocationPermission LocationServicePermission;

    LocationServiceEnabled =await Geolocator.isLocationServiceEnabled();
    if(!LocationServiceEnabled)
      {
        return Future.error("Service is not enabled");

      }

    LocationServicePermission = await Geolocator.checkPermission();
    if(LocationServicePermission == LocationPermission.denied){
      LocationServicePermission = await Geolocator.requestPermission();
      if(LocationServicePermission == LocationPermission.denied)
        {
          return Future.error("Permission denied");
        }
    }
    return Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
  }

  Future<void> getLocationWeather() async{

    Position position;
    position = await determineLocation();

     Lon = position.longitude;
     Lan = position.latitude;

     http.Response response = await http.get(Uri.parse(url));
     if(response.statusCode == 200)
       {
         String data = response.body;

         cityName = jsonDecode(data)['name'];
         Temperature = jsonDecode(data)['main']['temp'];
         Temperature = KelvintoCelsius(Temperature);


       }
  }


  double KelvintoCelsius(double kelvin){
    double Celsius = kelvin - 273.5;
    return Celsius;
  }


}