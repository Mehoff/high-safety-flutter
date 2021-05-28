// Класс для работы с MySQL
// Через этот класс мы получаем данные из базы данных.
// Для работы с MySQL нужно подключить специальную библиотеку
// Она подключается в файле pubspec.yaml
// Строчка mysql1: ^0.19.2 за это отвечает.
// flutter сам качает все нужные файлы для работы библиотеки
// Потом просто нужно импортировать эту библу в этот dart файл
import 'package:mysql1/mysql1.dart';

import '../classes/product.dart';

class Mysql {
  // Данные для входа в БД MySQL
  static String host = 'sql11.freemysqlhosting.net',
      user = 'sql11415047',
      password = 'Fh53bmIyjm',
      db = 'sql11415047';

  static int port = 3306;

  // Статическая функция для получения коллекции продуктов по индексу категории
  // Функция асинхронная и возвращает "список динамических данных"

  static Future<List<dynamic>> getProductsByCategoryIndex(int index) async {
    var settings = new ConnectionSettings(
        host: host, port: port, user: user, password: password, db: db);

    // Функция для получения правильного соответственного WHERE для запроса
    String where = getSQLRangeString(index);

    // Благодаря инетерполяции строк вставляем нужный запрос
    String sql = 'SELECT * FROM `Products` $where';

    // Пустой список, скоро  мы его заполним нужными данными
    List<Product> products = [];

    // Создаем объект подключения к БД
    var connection = await MySqlConnection.connect(settings);
    // После поключения выполняем запрос, и ждем пока данные прийдут в results
    var results = await connection.query(sql);

    // Данные приходят в формате "массива строк БД",
    // id name subname  description categoryId
    // 1  asd  asd      asd         asd
    // 2  asd  asd      asd         asd
    // ...
    // Соответственно row[0] это поле id row[1] - поле namr row[2] после subname и т.д.

    for (var row in results) {
      // Из каждой возвращенной запросом строчки создаем объект продукта
      // lib/classes/product.dart
      Product newProduct = Product(
          int.parse(row[0].toString()),
          row[1].toString(),
          row[2].toString(),
          row[3].toString(),
          row[4].toString());

      // Закидываем в массив продуктов
      products.add(newProduct);
    }

    // После работы с БД, обязательно нужно закрыть соединение с БД
    connection.close();

    // Принт для дебага
    print('<!> getProductsByCategoryIndex($index)');
    print(products.length);

    // Возвращаем данные из MySQL
    return products;
  }

  // Функция которая нормализует запрос к продуктам по категориям
  static String getSQLRangeString(int index) {
    //Принимаемые параметры 0 - 7
    switch (index) {
      case 0:
        return 'WHERE `CategoryFK` >= 1 AND `CategoryFK` <= 4';
      case 1:
        return 'WHERE `CategoryFK` >= 5 AND `CategoryFK` <= 11';
      default:
        {
          return 'WHERE `CategoryFK` = ${index + 10}';
        }
    }
  }
}
