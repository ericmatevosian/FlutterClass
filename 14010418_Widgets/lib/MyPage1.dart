import 'package:flutter/material.dart';


class MyPage1 extends StatelessWidget {
  const MyPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.indigo.shade900,
        child: Center(
          child: Text(
              "Page1",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
            ),
          ) ,
        ),
      ),
    );
  }
}
