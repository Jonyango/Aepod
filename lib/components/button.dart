import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonName;
  final Color backgroundColor;
  final Color textColor;

  Button({this.buttonName, this.backgroundColor, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        color: backgroundColor,
      ),
      child: FlatButton(
        onPressed: null,
        child: Text(
          buttonName,
          style: TextStyle(fontWeight: FontWeight.w800, color: textColor),
        ),
      ),
    );
  }
}
