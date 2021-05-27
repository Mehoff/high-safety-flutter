import 'package:mysql1/mysql1.dart';
import '../classes/product.dart';

class Mysql {
  static String host = 'sql11.freemysqlhosting.net',
      user = 'sql11415047',
      password = 'Fh53bmIyjm',
      db = 'sql11415047';

  static int port = 3306;

  static Future<List<dynamic>> getProductsByCategoryIndex(int index) async {
    var settings = new ConnectionSettings(
        host: host, port: port, user: user, password: password, db: db);

    String where = getSQLRangeString(index);

    String sql = 'SELECT * FROM `Products` $where';

    List<Product> products = [];

    var connection = await MySqlConnection.connect(settings);
    var results = await connection.query(sql);

    for (var row in results) {
      Product newProduct = Product(
          int.parse(row[0].toString()),
          row[1].toString(),
          row[2].toString(),
          row[3].toString(),
          row[4].toString());

      products.add(newProduct);
    }

    connection.close();

    print('<!> getProductsByCategoryIndex($index)');
    print(products.length);

    return products;
  }

  static String getSQLRangeString(int index) {
    //Принимаемые параметры 0 - 7
    switch (index) {
      case 0:
        return 'WHERE `CategoryFK` >= 1 AND `CategoryFK` <= 4';
      case 1:
        return 'WHERE `CategoryFK` >= 5 AND `CategoryFK` <= 11';
      default:
        {
          return 'WHERE `CategoryFK` = ${index + 9}';
        }
    }
  }
}
