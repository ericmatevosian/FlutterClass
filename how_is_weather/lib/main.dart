import 'package:flutter/material.dart';
import 'package:how_is_weather/MyScaffold.dart';
import 'package:how_is_weather/style.dart';
import 'FetchData.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {

String _title = "How Is Weather?";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: mainPage(),

    );
  }
}

class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {

  String api_key="f39367a4a07396060d0f2503de8b70f3";
  String? cityName;
  LocationWeather result=LocationWeather();

  Future<void> getResult() async{

    await result.getLocationWeather();
    print(result.cityName);
    print(result.Temperature);

  }

  final spinkit = SpinKitSpinningCircle(
    color: Colors.blue,
    size: 100.0,
  );

  @override
  initState(){

    getResult().then((value)=>setState((){}));
    
  }
  
  
  @override
  Widget build(BuildContext context) {

    if(result.cityName.isNotEmpty)
    {
      return MyScaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  result.cityName,
                  style: MyStyle(),
                ),
                Text(
                  "${result.Temperature.toStringAsFixed(1)} \u2103",
                  style: MyStyle(),
                ),
              ],
            ),
          )

      );
    }
    else
      return MyScaffold(
          body: Center(
            child: spinkit,
          ),
      );

  }
}


