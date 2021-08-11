import 'dart:js';

import 'package:adi/components/rounded_button.dart';
import 'package:adi/components/roundedinputfield.dart';
import 'package:adi/components/roundedpass.dart';
import 'package:adi/homescreen/homescreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:firebase_auth/firebase_auth.dart';



import 'background.dart';
//with StatefulWidget 
//caution while runing.
class Loginbody extends StatefulWidget{
 
  @override
  State<StatefulWidget> createState() => new _LoginPageState();
  
}
class _LoginPageState extends State<Loginbody>{
  String _email;
  String _password;
  void validateAndSubmit() async{
    try{
    UserCredential user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
    
    print('SignedIn:$user');
    // verifyAndNavi(user);
    }
    catch(e){
      print('Error: $e');
    }
  

    
  }
  
  @override
   Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset("assets/image/farmer.svg",
              height: size.height * 0.35),
          RoundedinputField(
            hintText: "Your Email",
            onChanged: (value) => _email = value,
          ),
          Roundedpass(
            onChanged: (value) => _password =value,
          ),
          RoundedButton(
            text: "LOGIN",
            press: () { 
              //validateAndSubmit();              
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return HomeScreen();
              //     },
              //   ),
              // );
            },
          )
        ],
      ),
    );
  }
}

// void verifyAndNavi(UserCredential user) {
//   if(user != null){
//     Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) {
//                     return HomeScreen();
//                   },
//                 ),
//               );
//   }
// }



