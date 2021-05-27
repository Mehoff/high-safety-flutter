import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';
import '../classes/product.dart';

class Mysql {
  static String host = 'sql11.freemysqlhosting.net',
      user = 'sql11415047',
      password = 'Fh53bmIyjm',
      db = 'sql11415047';

  static int port = 3306;

  // Future<List<List<dynamic>>> getAllProducts() async {
  //   var settings = new ConnectionSettings(
  //       host: host, port: port, user: user, password: password, db: db);

  //   int categoryIndex = 0;
  //   String sql = 'SELECT * FROM `Products`';
  //   List<List<dynamic>> products = [];

  //   var connection = await MySqlConnection.connect(settings);
  //   var results = await connection.query(sql);

  //   for (var row in results) {
  //     categoryIndex = getProperCategoryIndex((row[5]).toInt());
  //     products[categoryIndex].add(row[1].toString());
  //   }

  //   print('<!> getAllProducts()');
  //   print(products);
  //   return products;
  // }

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

  // int getProperCategoryIndex(int index) {
  //   // 0 - 7
  //   if (index >= 1 && index <= 4) {
  //     return 0;
  //   } else if (index >= 5 && index <= 11) {
  //     return 1;
  //   } else if (index > 11) {
  //     return index - 10;
  //   } else
  //     return null;
  // }
}

// Future<MySqlConnection> getConnection() async{

// }

// Future<MySqlConnection> getConnection() async {

//   return await MySqlConnection.connect(settings);
// }

// MySqlConnection.connect(settings).then((connection) => {
//       connection.query('SELECT * FROM `Products`').then((results) => {
//             for (var row in results){
//                 categoryIndex = getProperCategoryIndex((row[5]).toInt()),
//                 products[categoryIndex].add(row[1].toString())
//               }
//           })
//     });

// return products;
