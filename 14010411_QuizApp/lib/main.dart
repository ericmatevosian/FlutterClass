import 'package:flutter/material.dart';
import 'QuestionBank.dart';

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

  Question question = Question(); //define an object from Question Class

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
                question.QuestionBox[question.QuestionCounter],
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
              print("Question Number = ${question.QuestionCounter}");
              setState((){

                if(question.AnswerBox[question.QuestionCounter] == false){
                  question.ScoreKeeper.add(question.TrueMarker);
                  //print("Bravo");
                }
                else {
                  question.ScoreKeeper.add(question.FalseMarker);
                  print("Oops!!");
                }

                question.QuestionCounter++;
                if(question.QuestionCounter==10) {
                  question.QuestionCounter=0;
                  question.ScoreKeeper.clear();
                }
                question.QuestionBox[question.QuestionCounter];
              });
            },
            onLongPress: (){
              print("Clear");
              setState((){
                question.ScoreKeeper.clear();
                question.QuestionCounter=0;
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
              print("Question Number = ${question.QuestionCounter}");
              setState((){

                if(question.AnswerBox[question.QuestionCounter] == true){
                  question.ScoreKeeper.add(question.TrueMarker);
                  print("Bravo");
                }
                else {
                  question.ScoreKeeper.add(question.FalseMarker);
                  print("Oops!!");
                }

                question.QuestionCounter++;
                if(question.QuestionCounter==10) {
                  question.QuestionCounter=0;
                  question.ScoreKeeper.clear();
                }
                question.QuestionBox[question.QuestionCounter];
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
            children: question.ScoreKeeper,
          ),
        )
      ],
    );
  }
}
