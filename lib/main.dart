import 'package:flutter/material.dart';
import 'screens/home.dart';

// Главный файл приложения, отсюда запускается приложение (функция main) 
void main() {
  runApp(MyApp());
}

// В flutter все части приложения это Виджеты: кнопки, списки, экраны, абсолютно все.
// Этот виджет - главный виджет приложения, его "корень"
// с него всё стартует, тут указываются стартовые, общие настройки приложения

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'High Safety',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: myHomePage - виджет главного (первого) экрана приложения
      // Реализация этого виджета находится в: lib/screens/home.dart 
      home: MyHomePage(),
    );
  }
}
