import 'package:bmi_app/common_widget/buttom_button.dart';
import 'package:bmi_app/common_widget/cardforhome.dart';
import 'package:bmi_app/common_widget/constant.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key,
      required this.bmiresult,
      required this.resulttext,
      required this.interpolation});
  final String bmiresult;
  final String resulttext;
  final String interpolation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(10.0),
            child: const Text('Your Result', style: titleTextStyle),
          )),
          Expanded(
            flex: 5,
            child: OurCard(
              color: activeColourCard,
              cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(resulttext, style: resultTextStyle),
                    Text(
                      bmiresult,
                      style: bmiTextStyle,
                    ),
                    Text(
                      interpolation,
                      textAlign: TextAlign.center,
                      style: bodyTextStyle,
                    )
                  ]),
            ),
          ),
          BottomButton(
            buttonTittle: "RE-CALCULATE",
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
