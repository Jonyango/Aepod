import 'package:flutter/material.dart';
import 'package:aepod/components/form_field.dart';

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
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Form(
        key: _formKey,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          FormFieldText(
            label: 'Email Address',
            controller: _emailTextEditingController,
            iconData: Icons.email,
          ),
          FormFieldText(
            label: 'Password',
            controller: _passwordTextEditingController,
            iconData: Icons.lock,
          ),
        ]),
      ),
    );
  }
}

