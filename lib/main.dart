
import 'package:adi/welcomescreen/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'components/constant.dart';

Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Store',
      
      theme: ThemeData(
          primaryColor: PrimaryDark,scaffoldBackgroundColor: Colors.white),
      home: WelcomeScreen()
    );
  }
}

