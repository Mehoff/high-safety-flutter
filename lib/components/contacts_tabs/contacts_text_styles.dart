import 'package:flutter/material.dart';

class ContactsTextStyle {
  static TextStyle h1(BuildContext context) {
    return TextStyle(
      fontSize: 22.0,
      color: Colors.orange,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle h2(BuildContext context) {
    return TextStyle(
      fontSize: 22.0,
      color: Colors.grey,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle h3(BuildContext context) {
    return TextStyle(
      fontSize: 18.0,
      color: Colors.black,
    );
  }
}
