import 'dart:ui';

// Подключаемые классы и материалы

import 'package:flutter/material.dart';
import 'package:flutter_shop_application/screens/contacts.dart';
import 'package:flutter_shop_application/screens/products.dart';
import '../components/widgets.dart';

// Вёрстка главной страницы

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // В виджеты можно засовывать другие виджеты, для бэкграунда я сделал отдельный виджет
        // и запихнул его сюда, подключив сверху в виде import`а
        // import '../components/widgets.dart';
        // Чтобы посмотреть как выглядит внутренность виджета BackgroundImage: 
        // lib/components/background.dart
        BackgroundImage(),
        // Дальше встроенные виджеты для правильной разметки элементов
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            // Column - аналог div в HTML
            child: Column(
              children: [
                // Логотип High Safety на главном экране
                Image.asset(
                  'assets/images/logo.png',
                  alignment: Alignment.center,
                ),
                // Вертикальный отступ
                SizedBox(height: 100),
                Container(
                  // Текст и стили к нему
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
                // Отступ
                SizedBox(height: 100),
                // div
                Container(
                  child: Column(
                    children: [
                      // Для кнопок я тоже написал свой виджет HomeButton
                      // Чтобы посмотреть как он реализован переходи в:
                      // lib/components/home_button.dart
                      // В кратце, кнопка является классом (объектом),
                      // в конструктор которого нужно передать два параметра:
                      // Текст который нужно отобразить, и функцию, которую нужно
                      // выполнить при нажатии на кнопку
                      HomeButton(
                        buttonText: "Продукция",
                        onClickFunction: () {
                          // Navigator.push встроенный класс для переключения между экранами
                          // По нажатию кнопки "Продукция" нас перекидывает на 
                          // ProductsPage (lib/screens/products.dart)
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductsPage()));
                        },
                      ),
                      // Та же кнопка
                      HomeButton(
                        buttonText: "Контакты",
                        onClickFunction: () {
                          // Только перекидывает на страницу "Контакты"
                          // ContactsPage (lib/screens/contacts.dart)
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ContactsPage()));
                        },
                      ),
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
