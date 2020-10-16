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
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [kThemeColor, kThemeColor],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Padding(
                padding: EdgeInsets.only(top:28.0),
                child: Text(
                  'Register on Aepod',
                  style: kTitleTextStyle,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 25.0, top: 18.0),
                child: Text(
                  "Create an Aepod Acoount. We can't wait to \n have you",
                  style: kTextStyle,
                ),
              ),
              Expanded(
                child: FormComponent(),
              ),
              Text(
                'or Register using social media',
                textAlign: TextAlign.left,
                style: kTextStyle,
              ),
              SocialMediaButtons(),
              Button(
                buttonName: 'Register',
                backgroundColor: kTextColor,
                textColor: kThemeColor,
              ),
              Center(
                child: Text(
                  'Already have an account? login',
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
