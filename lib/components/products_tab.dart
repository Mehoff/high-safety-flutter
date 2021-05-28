import 'package:flutter/material.dart';
import 'package:flutter_shop_application/classes/mysql.dart';
import '../screens/product.dart';

// Таб с продуктами тоже динамический виджет, по-этому используем класс StateFulWidget

class ProductsTab extends StatefulWidget {
  // Этот виджет принимает в качестве параметра Id категории товаров
  ProductsTab(this.categoryId);
  final int categoryId;

  @override
  _ProductsTabState createState() => _ProductsTabState();
}

// with AutomaticKeepAliveClientMixin<ProductsTab>
// и
// @override
// bool get wantKeepAlive => true;

// Позволяют выполнить загрузку таба 1 раз, и закешировать спаршенные с БД данные
// Без этого кода, каждый раз когда мы листали табы - производился бы запрос в БД,
// Что является плохой оптимизацией и большой нагрузкой на БД

class _ProductsTabState extends State<ProductsTab>
    with AutomaticKeepAliveClientMixin<ProductsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // FutureBuilder класс который строит данные получаемые асинхронно
      // future: асинхронная функция которая возвращает данные, у нас это получение продуктов по категории из БД
      child: FutureBuilder<List<dynamic>>(
        future: Mysql.getProductsByCategoryIndex(widget.categoryId),
        // builder: "Строитель данных" от отобразит данные во время и после загрузки
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          // Пока данные ещще не загружены до конца - показываем текст загрузки
          if (snapshot.data == null) {
            return Container(
              child: Center(
                child: Text(
                  "Загрузка...",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
            );
            // Когда данные загружены, строим список
          } else {
            return ListView.builder(
              // Физика вертикального списка, при достижении конца списка, появляется эффект отпрыгивания
              physics: BouncingScrollPhysics(),
              // Обязательный параметр - количество едениц данных списка
              itemCount: snapshot.data.length,
              // Строитель данных
              itemBuilder: (BuildContext context, int index) {
                // Возвращает как будет выглядеть каждая еденица данных которую мы получили из запроса
                // По сути "шаблон" того как обрабатывать каждую единицу данных
                return ListTile(
                  // В нашем случае это будет ListTile, запихнём данные по порядку
                  title: Text(snapshot.data[index].name),
                  subtitle: Text(snapshot.data[index].subname),
                  //onTap - метод вызываемый когда пользователь тыкает по элементу списка
                  // В нашем случае вызовется переход на экран ProductPage в параметре которого
                  // будет продукт присвоеный itemBuilder`ом
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ProductPage(snapshot.data[index])));
                  },
                );
              },
            );
          }
        },
      ),
    );
  }


// Про это  написал выше
  @override
  bool get wantKeepAlive => true;
}