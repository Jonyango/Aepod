import 'package:aepod/components/button.dart';
import 'package:aepod/constants/index.dart';
import 'package:flutter/material.dart';

class PersonalizeExperience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThemeColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height:15.0),
              Container(
                margin: EdgeInsets.only(top:48.0),
                child: Text(
                  "Let's personalize your \nexperience",
                  style: kTitleTextStyle,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 25.0, top: 25.0),
                child: Text(
                  "What can we call you? Could be your name, \na nickname or something funny ☺️.",
                  style: kTextStyle,
                ),
              ),
              UserNameForm(),
              Spacer(),
              Button(
                buttonName: 'Continue',
                backgroundColor: kTextColor,
                textColor: kThemeColor,
              ),
              SizedBox(height:40.0),
            ],
          ),
        ),
      ),
    );
  }
}

class UserNameForm extends StatefulWidget {
  @override
  _UserNameFormState createState() => _UserNameFormState();
}

class _UserNameFormState extends State<UserNameForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _userName = new TextEditingController();

  @override
  void dispose() {
    _userName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: kTextColor, width: 0.5),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.person_outline,
              color: kTextColor,
            ),
            Expanded(
              child: TextFormField(
                controller: _userName,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle: kInputStyle,
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
