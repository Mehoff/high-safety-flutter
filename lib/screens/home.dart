// import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_shop_application/screens/contacts.dart';
import 'package:flutter_shop_application/screens/products.dart';
import '../screens/sqlTest.dart';
import '../components/widgets.dart';


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  alignment: Alignment.center,
                ),
                SizedBox(height: 100),
                Container(
                  child: Column(
                    children: [
                      Text(
                        'Российский производитель средств индивидуальной и коллективной защиты от падения с высоты',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 100),
                Container(
                  child: Column(
                    children: [
                      HomeButton(
                        buttonText: "Продукция",
                        onClickFunction: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductsPage()));
                        },
                      ),
                      HomeButton(
                        buttonText: "Контакты",
                        onClickFunction: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ContactsPage()));
                        },
                      ),
                      HomeButton(
                        buttonText: "DB TEST",
                        onClickFunction: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SqlDataPage()));
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
