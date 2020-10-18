import 'package:aepod/constants/index.dart';
import 'package:flutter/material.dart';

class FormFieldText extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final IconData iconData;

  FormFieldText({this.label, this.controller, this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: kTextColor, width: 0.5),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconData,
            color: kTextColor,
          ),
          Expanded(
            child: TextFormField(
              controller: controller,
              keyboardType: label == 'Email Address'
                  ? TextInputType.emailAddress
                  : TextInputType.visiblePassword,
              decoration: InputDecoration(
                labelText: label,
                labelStyle: kInputStyle,
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
        ],
      ),
    );
  }
}