import 'package:aepod/constants/index.dart';
import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  final IconData icon;
  final String cardTitle;
  final String dataValue;
  DetailsCard({this.icon, this.cardTitle, this.dataValue});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      padding: EdgeInsets.only(left:8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: kTextColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: kIconColor.withOpacity(0.25),
          ),
          Text(
            cardTitle,
            style: TextStyle(
                color: Color(0xff06492C).withOpacity(0.25),
                fontWeight: FontWeight.w200),
          ),
          Text(
            dataValue,
            style: kDetailsCardTextStyle,
          )
        ],
      ),
    );
  }
}
