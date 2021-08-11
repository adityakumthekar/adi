import 'package:adi/components/textfieldcontainer.dart';
import 'package:flutter/material.dart';

import 'constant.dart';


class Roundedpass extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const Roundedpass({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextfieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: "Password",
            icon: Icon(Icons.lock, color: PrimaryDark),
            suffixIcon: Icon(
              Icons.visibility,
              color: PrimaryDark,
            ),
            border: InputBorder.none),
      ),
    );
  }
}