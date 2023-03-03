import 'package:pollard/components/bottom_button.dart';
import 'package:pollard/constant.dart';
import 'package:pollard/components/reusable_card.dart';
import 'package:flutter/material.dart'; 


class Result extends StatelessWidget {
  Result(
      {required this.bmiResult,
      required this.bmiText,
      required this.interpretation});
  final String bmiResult;
  final String bmiText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0E21),
        title: const Text('POL POL'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              child: const Text(
                'Total',
                style: kTopTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      bmiText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Text(
                      interpretation,
                      style: kResultBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // BottomButton(
          //     onTap: () {
          //       Navigator.pop(context);
          //     },
          //     bottomText: 'Re-Calculate', onPressed: () {  },)
        ],
      ),
    );
  }
}
