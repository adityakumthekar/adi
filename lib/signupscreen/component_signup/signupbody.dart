import 'package:adi/administrator/admin.dart';
import 'package:adi/components/constant.dart';
import 'package:adi/components/rounded_button.dart';
import 'package:adi/components/roundedinputfield.dart';
import 'package:adi/components/roundedpass.dart';
import 'package:adi/signupscreen/component_signup/background.dart';
import 'package:adi/signupscreen/component_signup/socialicon.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'oedivider.dart';

class Signupbody extends StatefulWidget{
  final Widget child;

  const Signupbody({Key key, @required this.child}) : super(key: key);
  State<StatefulWidget> createState() => new _SignupPageState();
  
}
class _SignupPageState extends State<Signupbody>{
   String _email;
  String _password;
  void validateAndSubmit() async{
    try{
    UserCredential user = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password);
    
    print('SignedUp:');
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
            "SIGN UP",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            "assets/image/farmer.svg",
            height: size.height * 0.35,
          ),
          RoundedinputField(
            hintText: "Your Email",
            onChanged: (value) => _email =value,
          ),
          Roundedpass(
            onChanged:(value) => _password =value,
          ),
          RoundedButton(
            text: "SIGN UP",
            color: PrimaryDark,
            press: () {validateAndSubmit();
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return HomeScreenadmin();
              //                         },
              //                       ),
              //                     );
                                },
                              ),
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                              OrDivider(),
                    
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Socialicon(
                                    iconSrc: "assets/icons/facebook.svg",
                                    press: () {},
                                  ),
                                  Socialicon(
                                    iconSrc: "assets/icons/google.svg",
                                    press: () {},
                                  ),
                                  Socialicon(
                                    iconSrc: "assets/icons/twitter.svg",
                                    press: () {},
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
    
    
  }

}