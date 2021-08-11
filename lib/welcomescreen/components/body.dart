import 'package:adi/components/constant.dart';
import 'package:adi/components/rounded_button.dart';
import 'package:adi/loginscreen/login_screen.dart';
import 'package:adi/signupscreen/signup_screen.dart';
import 'package:adi/welcomescreen/components/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome to Kissan Store",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SvgPicture.asset(
              "assets/image/farmer1.svg",
              height: size.height * 0.45,
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "Sign Up",
              color: PrimaryGrey,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}