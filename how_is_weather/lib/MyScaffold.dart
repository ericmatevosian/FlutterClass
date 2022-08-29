import 'package:flutter/material.dart';


class MyScaffold extends StatelessWidget {

  final Widget body;

  MyScaffold({required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "HowIsWeather?",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: body,
    );
  }
}
