import 'package:flutter/material.dart';


class MyPage2 extends StatelessWidget {
  const MyPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.red.shade900,
        child: Center(
          child: Text(
            "Page2",
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
