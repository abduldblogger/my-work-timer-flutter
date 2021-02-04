import 'package:flutter/material.dart';
import 'package:my_work_timer/components/button.dart';
import 'package:my_work_timer/constants/constants.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final double availableWidth = constraints.maxWidth;
          return Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Button(
                        buttonColor: kFirstButtonColor,
                        text: 'Work',
                        onTap: () => {},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                    ),
                    Expanded(
                      child: Button(
                        buttonColor: kSecondButtonColor,
                        text: 'Short Break',
                        onTap: () => {},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                    ),
                    Expanded(
                      child: Button(
                        buttonColor: kThirdButtonColor,
                        text: 'Long Break',
                        onTap: () => {},
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: CircularPercentIndicator(
                    percent: 1,
                    center: Text(
                      '23.45',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    progressColor: kFirstButtonColor,
                    radius: availableWidth / 2,
                    lineWidth: 10,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Button(
                        buttonColor: kFirstBottomButtonColor,
                        text: 'Stop',
                        onTap: () => {},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                    ),
                    Expanded(
                      child: Button(
                        buttonColor: kSecondBottomButtonColor,
                        text: 'Restart',
                        onTap: () => {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
