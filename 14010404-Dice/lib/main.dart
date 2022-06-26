import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.indigo.shade900,
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade600,
        title: Center(
          child: Text(
            "RandomDice",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int counter_left = 1;
  int counter_right = 2;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 200,
                width: 200,
                //color: Colors.red,
                child: Image(
                  image: AssetImage('images/Dice${counter_left}.png'),
                )),
            Container(
                height: 200,
                width: 200,
                //color: Colors.blue,
                child: Image(
                  image: AssetImage('images/Dice${counter_right}.png'),
                )),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Colors.yellow.shade300,
            border: Border.all(color: Colors.black87,width: 5 ),
          ),
          //color: Colors.white,
          width: 230,
          // height: 100,
          child: FlatButton(

            onPressed: () {
              setState((){
                counter_right=  Random().nextInt(6)+1;
                counter_left=  Random().nextInt(6)+1;

              });
              print(counter_right);
              print(counter_left);
            },
            child: Center(
              child: Text(
                "Roll the dice",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Pacifico"),
              ),
            ),
          ),
        )
      ],
    );
  }
}
