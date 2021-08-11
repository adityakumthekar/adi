

import 'package:adi/loginscreen/login_body.dart';
import 'package:flutter/material.dart';



class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //changed this loginbody()
      body: SingleChildScrollView(child: Loginbody()));
    
  }
}