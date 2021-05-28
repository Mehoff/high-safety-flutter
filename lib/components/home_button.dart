import 'package:flutter/material.dart';

// Виджет кнопки на начальном экране, принимает два параметра, текст и функцию

class HomeButton extends StatelessWidget {
  final String buttonText;
  final Function onClickFunction;

  const HomeButton({Key key, this.buttonText, this.onClickFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Размеры кнопки
      width: 300,
      height: 70,
      // Отступы
      margin: const EdgeInsets.only(top: 10.0),
      child: TextButton(
        // Текст кнопки
        child: Text(this.buttonText),
        // Стиль кнопки
        style: TextButton.styleFrom(
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            primary: Colors.white,
            alignment: Alignment.center,
            backgroundColor: Colors.orange),
        // Че делать когда на неё нажали, она будет делать то, 
        // что мы передали в качестве параметра
        onPressed: this.onClickFunction,
      ),
    );
  }
}
