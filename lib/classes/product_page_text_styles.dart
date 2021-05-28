import 'package:flutter/material.dart';

// Статический класс который возвращает стили

class ProductTextStyle {
  static TextStyle h1(BuildContext context) {
    return TextStyle(
      fontSize: 34.0,
      color: Colors.orange,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle h2(BuildContext context) {
    return TextStyle(
      fontSize: 18.0,
      color: Colors.grey,
    );
  }

  static TextStyle h3(BuildContext context) {
    return TextStyle(
      fontSize: 16.0,
      color: Colors.grey,
    );
  }
}
