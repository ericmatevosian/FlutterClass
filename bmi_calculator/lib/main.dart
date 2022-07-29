import 'dart:math';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:bmi_calculator/results.dart';
import 'MyScaffold.dart';

// global variable

bool Healthy_BMI = true;

String Status = "";

double BMI = 0;
double Healthy_Weight = 0;
double Weight_Drift = 0;


const Max_Healthy_BMI = 25;
const Min_Healthy_BMI = 18.5;
const Max_OverWeight_BMI = 30;
const Max_Obese_BMI=40;


enum Gender { male, female }

var sex = Gender.male;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "FredokaOne"),
      home: mainHome(),
    );
  }
}

class mainHome extends StatelessWidget {
  mainHome({Key? key}) : super(key: key);
  Color _TextColorBright = Colors.grey.shade200;

  Color _MainColor = Colors.indigo;
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
        body: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController WeightController = TextEditingController();
  TextEditingController HeightController = TextEditingController();
  int Weight = 0;
  double Height = 0;

  void play(int i) {
    AudioCache player = AudioCache();
    player.play('Notice${i}.wav');
  }

  void ClassifyStatus(){
    if(BMI < Min_Healthy_BMI) Status = "Underweight";
    else if (BMI < Max_Healthy_BMI && BMI > Min_Healthy_BMI) Status = "Normal";
    else if (BMI>Max_Healthy_BMI && BMI<Max_OverWeight_BMI) Status = "Overweight";
    else if(BMI>Max_OverWeight_BMI && BMI < Max_Obese_BMI) Status = "Obese";
    else if(BMI> Max_Obese_BMI) Status = "Extremely obese";
    else Status = "Error";
  }

  List<bool> isSelected = [false, false];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ListTile(
          leading: Icon(
            Icons.monitor_weight,
            color: mainHome()._MainColor,
            size: 40,
          ),
          title: TextField(
            controller: WeightController,
            cursorColor: mainHome()._MainColor,
            keyboardType: TextInputType.number, // to open a numpad
            maxLength: 3,
            decoration: InputDecoration(
                counter: Offstage(), // to hide the counter
                //counterText: "",  // to hide the counter
                border: OutlineInputBorder(),
                hintText: "Your Weight in Kg",
                labelText: "Weight",
                suffixText: "Kg",
                suffixStyle: TextStyle(
                  color: mainHome()._MainColor,
                )),
          ),
        ), // Weight
        ListTile(
          leading: Icon(
            Icons.height_rounded,
            color: mainHome()._MainColor,
            size: 40,
          ),
          title: TextField(
            controller: HeightController,
            cursorColor: mainHome()._MainColor,
            keyboardType: TextInputType.number, // to open a numpad
            maxLength: 3,
            decoration: InputDecoration(
                counter: Offstage(), // to hide the counter
                //counterText: "",  // to hide the counter
                border: OutlineInputBorder(),
                hintText: "Your Height in centimeter like: 172",
                labelText: "Height",
                suffixText: "cm",
                suffixStyle: TextStyle(
                  color: mainHome()._MainColor,
                )),
          ),
        ), //Height
        Container(
          decoration: BoxDecoration(
            color: mainHome()._MainColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(
              onPressed: () {
                if (WeightController.text.isEmpty ||
                    HeightController.text.isEmpty) {
                  print("Empty");
                } else {
                  Weight =
                      int.parse(WeightController.text); //cast string to int
                  Height = double.parse(
                      HeightController.text); //cast string to double
                  BMI = double.parse((Weight / pow((Height / 100), 2))
                      .toStringAsFixed(2)); //BMI formula 2 digits precision

                  print(BMI);
                  if (BMI < Max_Healthy_BMI && BMI > Min_Healthy_BMI) {
                    Healthy_BMI = true;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ResultPage();
                    }));
                    play(1);
                  } else {
                    Healthy_BMI = false;
                    if(BMI>Max_Healthy_BMI)
                      {
                        Healthy_Weight = Max_Healthy_BMI.toDouble() * pow((Height / 100), 2);
                        Weight_Drift = (Weight - Healthy_Weight).roundToDouble();
                      }
                    else{
                      Healthy_Weight = Min_Healthy_BMI.toDouble() * pow((Height / 100), 2);
                      Weight_Drift = (Healthy_Weight - Weight).roundToDouble();
                    }
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return ResultPage();
                        }));
                    play(2);
                  }
                  ClassifyStatus();
                }
              },
              child: Text(
                "Calculate",
                style: TextStyle(
                  fontSize: 20,
                  color: mainHome()._TextColorBright,
                ),
              )),
        )
      ],
    );
  }
}

void ShowInformation(context) {
  String WhatIsBMI =
      "The body mass index (BMI) is a measure that uses your height and weight to work out if your weight is healthy."
      "The BMI calculation divides an adult's weight in kilograms by their height in metres squared. For example, A BMI of 25 means 25kg/m2.";
  showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: AlertDialog(
            backgroundColor: Colors.grey.shade200,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35),
            ),
            title: Text(
              "What is BMI?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.indigo,
              ),
            ),
            content: Text(
              WhatIsBMI,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.indigo,
              ),
            ),
          ),
        );
      });
}
