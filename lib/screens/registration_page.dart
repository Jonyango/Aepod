import 'package:flutter/material.dart';
import 'package:aepod/components/components.dart';
import 'package:aepod/constants/index.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 14.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Register on Aepod',
                    style: kTitleTextStyle,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 25.0, top: 18.0),
                    child: Text(
                      "Create an Aepod Acoount. We can't wait to \n have you",
                      style: kTextStyle,
                    ),
                  ),
                  Text(
                    'or Register using social media',
                    style: kTextStyle,
                    ),
                  Button(
                    buttonName: 'Register',
                    backgroundColor: kTextColor,
                    textColor:kThemeColor ,

                  ),

                ]),
          ),
        ),
      ),
    );
  }
}
