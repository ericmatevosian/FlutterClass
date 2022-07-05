import 'package:flutter/material.dart';



class Question{

  int QuestionCounter = 0;

  List<Widget> ScoreKeeper =[];

  Icon TrueMarker = Icon(
    Icons.check_sharp,
    color: Colors.green,
    size: 30,
  );
  Icon FalseMarker = Icon(
    Icons.close_sharp,
    color: Colors.red,
    size: 30,
  );

  List<String> QuestionBox=[
    "The atomic number for lithium is 17",
    "A cross between a horse and a zebra is called a 'Hobra'",
    "The black box in a plane is black",
    "Alliumphobia is a fear of garlic",
    "Marrakesh is the capital of Morocco",
    "Fish cannot blink",
    "An octopus has three hearts",
    "Thomas Edison discovered gravity",
    "Alaska is the biggest American state in square miles",
    "There are 14 bones in a human foot",
    "END",
    "---",
  ];

  List<bool> AnswerBox=[false,false,false,true,false,true,true,false,true,false];


}