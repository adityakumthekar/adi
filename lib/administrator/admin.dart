import 'package:flutter/material.dart';

import 'caedsadmin.dart';


// ignore: camel_case_types
class HomeScreenadmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Cardsa(
              pname: "WHEAT",
              price: "",
            ),
            Cardsa(
              pname: "RICE",
              price: "",
            ),
            Cardsa(
              pname: "RICE",
              price: "",
            )
          ],
        ));
  }
}