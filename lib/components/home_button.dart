import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final String buttonText;
  final Function onClickFunction;

  const HomeButton({Key key, this.buttonText, this.onClickFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 70,
      margin: const EdgeInsets.only(top: 10.0),
      child: TextButton(
        child: Text(this.buttonText),
        style: TextButton.styleFrom(
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            primary: Colors.white,
            alignment: Alignment.center,
            backgroundColor: Colors.orange),
        onPressed: this.onClickFunction,
      ),
    );
  }
}
