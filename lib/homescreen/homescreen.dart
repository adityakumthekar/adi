import 'package:flutter/material.dart';

import 'cards.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Cardst(
              pname: "WHEAT",
              price: "30",
            ),
            Cardst(
              pname: "RICE",
              price: "30",
            ),
            Cardst(
              pname: "RICE",
              price: "30",
            )
          ],
        ));
  }
}