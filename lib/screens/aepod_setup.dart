import 'package:aepod/components/components.dart';
import 'package:aepod/constants/index.dart';
import 'package:flutter/material.dart';

class AepodSetupScreen extends StatelessWidget {
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
              Container(
                padding: EdgeInsets.only(top: 38.0),
                child: Text(
                  "Let's set you up",
                  style: kTitleTextStyle,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 25.0, bottom: 14.0),
                child: Text(
                  'Sync yourAepod with the app for added \nfunctionality',
                  style: kTextStyle,
                ),
              ),
              AepodContainer(
                aepodId: 'ID:1344295024',
                aepodName: 'Upstairs pod',
                aepodStatus: 'Synced',
              ),
              AepodContainer(
                aepodId: 'ID:1344295024',
                aepodName: 'Porch pod',
                aepodStatus: 'Synced',
              ),
              Container(
                width: 220.0,
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Color(0xff25AC73),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Sync new Aepod',
                      style: TextStyle(
                          color: kTextColor, fontWeight: FontWeight.w800),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.add_circle,
                          color: kTextColor,
                        ),
                        onPressed: () => print('button pressed')),
                  ],
                ),
              ),
              Spacer(),
              Button(
                buttonName: 'Continue',
                backgroundColor: kTextColor,
                textColor: kThemeColor,
              ),
              SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    );
  }
}
