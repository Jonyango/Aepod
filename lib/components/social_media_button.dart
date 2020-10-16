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
                    children: [
                      Icon(Icons.face),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Facebook',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: kTextColor,
                        ),
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
                    children: [
                      Icon(Icons.ac_unit),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Google',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: kTextColor,
                        ),
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
