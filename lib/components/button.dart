import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color buttonColor;
  final String text;
  final Function onTap;

  Button(
      {@required this.buttonColor, @required this.text, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: buttonColor,
      height: 43.0,
      onPressed: () => {onTap},
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
