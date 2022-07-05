import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              "QuizApp",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: quizApp(),
          ),
        )
      ),
    );
  }
}

class quizApp extends StatefulWidget {
  const quizApp({Key? key}) : super(key: key);

  @override
  State<quizApp> createState() => _quizAppState();
}

class _quizAppState extends State<quizApp> {

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
  int QuestionCounter = 0;
  List<bool> AnswerBox=[false,false,false,true,false,true,true,false,true,false];
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


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween ,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 9,
          child: Padding(
           padding: const EdgeInsets.all(5.0),
            child: Center(
              child: Text(
                QuestionBox[QuestionCounter],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo.shade800,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: FlatButton(
            onPressed: (){
              print("Question Number = ${QuestionCounter}");
              setState((){
                //ScoreKeeper.add(FalseMarker);
                if(AnswerBox[QuestionCounter] == false){
                  ScoreKeeper.add(TrueMarker);
                  //print("Bravo");
                }
                else {
                  ScoreKeeper.add(FalseMarker);
                  print("Oops!!");
                }

                QuestionCounter++;
                if(QuestionCounter==10) {
                  QuestionCounter=0;
                  ScoreKeeper.clear();
                }
                QuestionBox[QuestionCounter];
              });
            },
            onLongPress: (){
              print("Clear");
              setState((){
                ScoreKeeper.clear();
                QuestionCounter=0;
              });
            },
            child: Container(
              color: Colors.red,
              height: 60,
              margin: EdgeInsets.all(0),
              child: Center(
                child: Text(
                  "False",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: FlatButton(
            onPressed: (){
              print("Question Number = ${QuestionCounter}");
              setState((){
                //ScoreKeeper.add(FalseMarker);
                if(AnswerBox[QuestionCounter] == true){
                  ScoreKeeper.add(TrueMarker);
                  print("Bravo");
                }
                else {
                  ScoreKeeper.add(FalseMarker);
                  print("Oops!!");
                }

                QuestionCounter++;
                if(QuestionCounter==10) {
                  QuestionCounter=0;
                  ScoreKeeper.clear();
                }
                QuestionBox[QuestionCounter];
              });


            },
            child: Container(
              color: Colors.green,
              height: 60,
              margin: EdgeInsets.all(0),
              child: Center(
                child: Text(
                  "True",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: ScoreKeeper,
          ),
        )
      ],
    );
  }
}
