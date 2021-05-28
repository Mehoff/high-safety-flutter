import 'package:flutter/material.dart';

// Виджет бэкграунда
// Тут я по гайду в инете сделал эффект градиента-затемнения в виде шейдера
// Тут чёрт ногу сломит, так что не буду углубляться в год, по сути просто декорация

class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
        shaderCallback: (bounds) => LinearGradient(
              colors: [Colors.black, Colors.black12],
              begin: Alignment.bottomCenter,
              end: Alignment.center,
            ).createShader(bounds),
        blendMode: BlendMode.darken,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.black45, BlendMode.darken))),
        ));
  }
}
