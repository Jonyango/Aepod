import 'package:aepod/constants/index.dart';
import 'package:flutter/material.dart';

class LargerDetailsCard extends StatelessWidget {
  final String cardTitle;
  final IconData statusOneIcon;
  final IconData statusTwoIcon;
  final String statusOneTitle;
  final String statusTwoTitle;

  LargerDetailsCard(
      {this.cardTitle,
      this.statusOneIcon,
      this.statusTwoIcon,
      this.statusOneTitle,
      this.statusTwoTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      padding: EdgeInsets.only(left: 8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0), color: kTextColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(cardTitle),
        Container(
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            Icon(
              statusOneIcon,
              color: kIconColor.withOpacity(0.25),
            ),
            Text(
              statusOneTitle,
              style: kDetailsCardTextStyle,
            )
          ]),
        ),
        Container(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                statusTwoIcon,
                color: kIconColor.withOpacity(0.25),
              ),
              Text(
                statusTwoTitle,
                style: kDetailsCardTextStyle,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
