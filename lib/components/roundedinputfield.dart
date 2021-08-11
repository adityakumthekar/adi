import 'package:adi/components/textfieldcontainer.dart';
import 'package:flutter/material.dart';

import 'constant.dart';


class RoundedinputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedinputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextfieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: PrimaryDark,
            ),
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}