import 'package:flutter/material.dart';
import '../components/products_tab.dart';
import '../classes/mysql.dart';


// Экран с продуктами
// Тут больше всего движа происходит

// Виджеты бывают Stateful и Stateless (С состояниями и без состояний)
// То есть, те данные в которых динамичные и изменяемые и те которые статичны
// Список продукции динамический, потому-что данные асинхронно грузятся из БД

class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

 

class _ProductsPageState extends State<ProductsPage> {

  // Список продуктов, пока пустой
  List<List<dynamic>> products = [];
  // Класс БД
  var db = new Mysql();

  // DefaultTabController - виджет для работы с Табами
  // Обязательно нужно ему передать length - количество табов
  // в нашем случае их 8
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.orange,
            bottom: TabBar(
              // isScrollable делает так чтобы табы можно было горизонтально скролить
              // если стоит false, то flutter пытается поместить на 1 экран 8 табов,
              // что выглядит страшно
              isScrollable: true,
              indicatorColor: Colors.white,
              tabs: [
                // Массив табов
                // Состоит из иконки и текста под ней
                Tab(
                    icon: Image.asset(
                      'assets/icons/ankernie-ustroustva.png',
                      width: 36,
                      height: 36,
                    ),
                    text: 'Анкерные устройства'),
                Tab(
                    icon: Image.asset(
                      'assets/icons/strahovocxnoe-oborudovanie.png',
                      width: 36,
                      height: 36,
                    ),
                    text: 'Страховочное оборудование'),
                Tab(
                    icon: Image.asset(
                      'assets/icons/zachshitnie-ograzhdenia.png',
                      width: 36,
                      height: 36,
                    ),
                    text: 'Защитные ограждения'),
                Tab(
                    icon: Image.asset(
                      'assets/icons/protovovesnie-construkcii.png',
                      width: 36,
                      height: 36,
                    ),
                    text: 'Опорные конструкции'),
                Tab(
                    icon: Image.asset(
                      'assets/icons/trenirovochnie-poligoni.png',
                      width: 36,
                      height: 36,
                    ),
                    text: 'Тренировочные полигоны'),
                Tab(
                  icon: Image.asset(
                    'assets/icons/masks.png',
                    width: 36,
                    height: 36,
                  ),
                  text: 'Защитные маски',
                ),
                Tab(
                    icon: Image.asset(
                      'assets/icons/boots.png',
                      width: 36,
                      height: 36,
                    ),
                    text: 'Спецобувь'),
                Tab(
                    icon: Image.asset(
                      'assets/icons/aksesuari.png',
                      width: 36,
                      height: 36,
                    ),
                    text: 'Аксессуары'),
              ],
            ),
            // Текст АппБара
            title: Text("Продукция")),
        // TabBarView содержит внутренности каждого таба, я их вынес в отдельные
        // виджеты ProductsTab, а в качестве параметра передаю ID категории продуктов
        // lib/components/products_tab.dart';
        body: TabBarView(
          children: [
            ProductsTab(0),
            ProductsTab(1),
            ProductsTab(2),
            ProductsTab(3),
            ProductsTab(4),
            ProductsTab(5),
            ProductsTab(6),
            ProductsTab(7),
          ],
        ),
      ),
    );
  }
}