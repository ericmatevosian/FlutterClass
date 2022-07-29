import 'package:flutter/material.dart';
import 'main.dart';
import 'MyScaffold.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ResultPage extends StatelessWidget {
  Color SuccessColor = Colors.green.shade100;
  Color FailureColor = Colors.red.shade100;

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Results(),
      // scaffold_color: BMI < Max_Healthy_BMI && BMI > Min_Healthy_BMI
      //     ? SuccessColor
      //     : FailureColor,
    );
  }
}

class Results extends StatelessWidget {
  Color _SuccessColor = Colors.green.shade300;
  Color _FailureColor = Colors.red.shade300;
  String preStatus = "Your are classified as = ";
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          color: BMI < Max_Healthy_BMI && BMI > Min_Healthy_BMI
              ? _SuccessColor
              : _FailureColor,
          child: Center(
            child: Text(
              "BMI= ${BMI.toString()}",
              style: TextStyle(
                fontSize: 60,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          color: BMI < Max_Healthy_BMI && BMI > Min_Healthy_BMI
              ? _SuccessColor
              : _FailureColor,
          child: Center(
            child: AutoSizeText(
              preStatus + Status,
              maxLines: 1,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 23,
                color: Colors.grey.shade800,
              ),
            ),
          ),
        ),
        Container(
          color: BMI < Max_Healthy_BMI && BMI > Min_Healthy_BMI
              ? _SuccessColor
              : _FailureColor,
          child: Center(
            child: Healthy_BMI ? CongrasText() : WarningText(),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.indigo,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return mainHome();
              }));
            },
            child: Text(
              "reCalculate",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey.shade200,
                //fontFamily: "Pacifico",
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class WarningText extends StatelessWidget {
  const WarningText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
        BMI > Max_Healthy_BMI
            ? "You have to lose at least ${Weight_Drift} kg"
            : "You have to gain at least ${Weight_Drift} kg",
        maxLines: 1,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 23,
          color: Colors.grey.shade800,
        ),
      );

  }
}

class CongrasText extends StatelessWidget {
  const CongrasText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
        "Congratulations! you are in shape!",
        maxLines: 1,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 23,
          color: Colors.grey.shade800,
        ),
      );
  }
}
