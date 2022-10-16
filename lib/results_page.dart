import 'package:bmi_calc/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'calculate_bmi.dart';

class ResultsPage extends StatelessWidget {
    ResultsPage({required this.interpretation , required this.resultText , required this.bmiResult});
   String bmiResult;
   String resultText;
   String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),

            child: Text(
              'Your Result',
              style: kNumberTextStyle,
            ),
          )),
          Expanded(flex: 6, child: ReusableCard(colour: kActiveCardColour,
          cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                resultText.toUpperCase() , style: kResultTextStyle,
              ),
              Text(
                bmiResult ,style: kBMITextStyle,
              ),
              Text(
                interpretation,
                textAlign: TextAlign.center,
                style: kBodyTextStyle,
              ),

            ],
          ),
          )),
          Expanded(
            child: ElevatedButton(

              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFEB1555),
                minimumSize: const Size.fromHeight(50),
              ),
              child: Text(
                'RE-CALCULATE',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
          )
        ],
      ),
    );
  }
}
