
import 'package:flutter/material.dart';
import 'component_signup/signupbody.dart';
class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: SingleChildScrollView(
          child: Signupbody(
        child: Column(),
      )),
    );
  }
}