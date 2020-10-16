import 'package:aepod/constants/colors.dart';
import 'package:aepod/constants/index.dart';
import 'package:flutter/material.dart';

class SocialMediaButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Container(
                width: 170,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: kTextColor,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: FlatButton(
                  onPressed: null,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.face),
                      Text(
                        'Facebook',
                        style: kTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            Expanded(
              child: Container(
                width: 170,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: kTextColor,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: FlatButton(
                  onPressed: null,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.ac_unit),
                      Text(
                        'Google',
                        style: kTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
