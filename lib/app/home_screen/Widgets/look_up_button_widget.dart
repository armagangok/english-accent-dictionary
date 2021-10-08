import 'package:flutter/material.dart';
import 'package:wordmind/app/screens/look_up_root/look_up.dart';
import 'widgets.dart';

Widget lookUpButton(context) {
  return TextButton.icon(
    icon: iconButton(Icon(Icons.text_snippet_outlined)),
    label: text("Look Up"),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LookUpPage()),
      );
    },
  );
}
