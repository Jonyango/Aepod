import 'package:aepod/constants/index.dart';
import 'package:flutter/material.dart';

class FormComponent extends StatefulWidget {
  @override
  _FormComponentState createState() => _FormComponentState();
}

class _FormComponentState extends State<FormComponent> {
  final _formKey = GlobalKey<FormState>();
  final _emailTextEditingController = new TextEditingController();
  final _passwordTextEditingController = new TextEditingController();

  @override
  void dispose() {
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          FormField(
            label: 'Email',
            controller: _emailTextEditingController,
            iconData: Icons.alternate_email,
          ),
          FormField(
              label: 'Password',
              controller: _passwordTextEditingController,
              iconData: Icons.lock)
        ]),
      ),
    );
  }
}

class FormField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final IconData iconData;

  FormField({this.label, this.controller, this.iconData});

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
            color: Colors.transparent,
          ),
          Expanded(
            child: TextFormField(
              controller: controller,
              keyboardType: label == 'Email'
                  ? TextInputType.emailAddress
                  : TextInputType.visiblePassword,
              decoration: InputDecoration(
                labelText: label,
                labelStyle: TextStyle(
                    fontWeight: FontWeight.w200,
                    letterSpacing: 0.05,
                    color: kTextColor),
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
