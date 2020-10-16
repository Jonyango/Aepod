import 'package:aepod/constants/index.dart';
import 'package:flutter/material.dart';

class PersonalizeExperience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Text(
                "Let's Personalize your \n experience",
                style: kTitleTextStyle,
              ),
              Text(
                "What can we call you?could be your name \n a nickname or something funny.",
                style: kTextStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
