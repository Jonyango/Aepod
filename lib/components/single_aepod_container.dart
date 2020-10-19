import 'package:aepod/constants/index.dart';
import 'package:flutter/material.dart';

class AepodContainer extends StatelessWidget {
  final String aepodName;
  final String aepodStatus;
  final String aepodId;
  AepodContainer({this.aepodName, this.aepodStatus, this.aepodId});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.0,
      width: 220.0,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      margin: EdgeInsets.only(bottom: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Color(0xff25AC73),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Text(
                    aepodName,
                    style: TextStyle(
                        fontWeight: FontWeight.w800, color: kTextColor),
                  ),
                ),
                SizedBox(width: 30.0),
                Text(
                  aepodStatus,
                  style:
                      TextStyle(fontWeight: FontWeight.w500, color: kTextColor),
                ),
                Icon(Icons.check_circle, color: kTextColor)
              ],
            ),
          ),
          Text(aepodId,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                color: kTextColor,
              )),
        ],
      ),
    );
  }
}
