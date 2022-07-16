import 'package:flutter/material.dart';


class MyPage3 extends StatelessWidget {
  const MyPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.green.shade900,
        child: Center(
          child: Text(
            "Page3",
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
