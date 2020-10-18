import 'package:aepod/components/components.dart';
import 'package:aepod/constants/index.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThemeColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.only(top: 38.0),
                child: Text(
                  'Welcome Back',
                  style: kTitleTextStyle,
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 25.0, top: 18.0),
                child: Text(
                  "Let's get back to growing your aepod plants,\nshall we?",
                  style: kTextStyle,
                ),
              ),
              Expanded(
                child: FormComponent(),
              ),
              Text(
                'Forgot your Password?',
                style: kTextStyle,
              ),
              SizedBox(height: 35.0),
              Text(
                'or Register using social media',
                textAlign: TextAlign.left,
                style: kTextStyle,
              ),
              SizedBox(
                height: 20.0,
              ),
              SocialMediaButtons(),
              SizedBox(height: 85.0),
              Button(
                buttonName: 'Login',
                backgroundColor: kTextColor,
                textColor: kThemeColor,
              ),
              SizedBox(
                height: 25.0,
              ),
              Center(
                child: Text(
                  'New here? Register',
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
