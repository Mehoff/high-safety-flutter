import 'package:flutter/material.dart';
import '../components/products_tab.dart';
import '../classes/mysql.dart';

class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  List<List<dynamic>> products = [];
  var db = new Mysql();

  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((_) => {
  //         setState(() {
  //           products = loadProducts(context);
  //         })
  //       });
  // }

  //row 5 is CategoryFK

  // List<List<dynamic>> loadProducts(BuildContext context) {
  //   const int categoriesCount = 8;
  //   List<List<dynamic>> productsList = List.generate(
  //       categoriesCount, (index) => List.empty(growable: true),
  //       growable: true);

  //   db.getConnection().then((connection) {
  //     String sql = 'SELECT * FROM `Products`';

  //     connection.query(sql).then((results) {
  //       for (var row in results) {
  //         //setState(() {
  //         int dbCategoryIndex = ((row[5]).toInt());
  //         int categoryIndex = getProperCategoryIndex(dbCategoryIndex);

  //         productsList[categoryIndex].add(row[1].toString());
  //         //});
  //       }
  //       print(productsList);
  //       return productsList;
  //     });
  //   });
  // }

  // int getProperCategoryIndex(int dbCategoryIndex) {
  //   // 0 - 7

  //   if (dbCategoryIndex >= 1 && dbCategoryIndex <= 4) {
  //     return 0;
  //   } else if (dbCategoryIndex >= 5 && dbCategoryIndex <= 11) {
  //     return 1;
  //   } else if (dbCategoryIndex > 11) {
  //     return dbCategoryIndex - 10;
  //   } else
  //     return null;
  // }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.orange,
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              tabs: [
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
            title: Text("Продукция")),
        body: TabBarView(
          children: [
            Container(
              child: FutureBuilder<List<dynamic>>(
                future: Mysql.getProductsByCategoryIndex(0),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.data == null) {
                    return Container(
                      child: Center(
                        child: Text("Loading..."),
                      ),
                    );
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text(snapshot.data[index].name),
                        );
                      },
                    );
                  }
                },
              ),
            ),

            Text("Dummy"),
            Text("Dummy"),
            Text("Dummy"),
            Text("Dummy"),
            Text("Dummy"),
            Text("Dummy"),
            Text("Dummy"),
            // ProductsTab(products[0]),
            // ProductsTab(products[1]),
            // ProductsTab(products[2]),
            // ProductsTab(products[3]),
            // ProductsTab(products[4]),
            // ProductsTab(products[5]),
            // ProductsTab(products[6]),
            // ProductsTab(products[7]),
          ],
        ),
      ),
    );
  }
}

// class ProductsPage extends StatelessWidget {
//   final List<String> products = [];

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 8,
//       child: Scaffold(
//         appBar: AppBar(
//             backgroundColor: Colors.orange,
//             bottom: TabBar(
//               isScrollable: true,
//               indicatorColor: Colors.white,
//               tabs: [
//                 Tab(
//                     icon: Image.asset(
//                       'assets/icons/ankernie-ustroustva.png',
//                       width: 36,
//                       height: 36,
//                     ),
//                     text: 'Анкерные устройства'),
//                 Tab(
//                     icon: Image.asset(
//                       'assets/icons/strahovocxnoe-oborudovanie.png',
//                       width: 36,
//                       height: 36,
//                     ),
//                     text: 'Страховочное оборудование'),
//                 Tab(
//                     icon: Image.asset(
//                       'assets/icons/zachshitnie-ograzhdenia.png',
//                       width: 36,
//                       height: 36,
//                     ),
//                     text: 'Защитные ограждения'),
//                 Tab(
//                     icon: Image.asset(
//                       'assets/icons/protovovesnie-construkcii.png',
//                       width: 36,
//                       height: 36,
//                     ),
//                     text: 'Опорные конструкции'),
//                 Tab(
//                     icon: Image.asset(
//                       'assets/icons/trenirovochnie-poligoni.png',
//                       width: 36,
//                       height: 36,
//                     ),
//                     text: 'Тренировочные полигоны'),
//                 Tab(
//                   icon: Image.asset(
//                     'assets/icons/masks.png',
//                     width: 36,
//                     height: 36,
//                   ),
//                   text: 'Защитные маски',
//                 ),
//                 Tab(
//                     icon: Image.asset(
//                       'assets/icons/boots.png',
//                       width: 36,
//                       height: 36,
//                     ),
//                     text: 'Спецобувь'),
//                 Tab(
//                     icon: Image.asset(
//                       'assets/icons/aksesuari.png',
//                       width: 36,
//                       height: 36,
//                     ),
//                     text: 'Аксессуары'),
//               ],
//             ),
//             title: Text("Продукция")),
//         body: TabBarView(
//           children: [
//             ProductsTab(["Hello", "World"]),
//             ProductsTab(["My", "Name"]),
//             ProductsTab(["Is", "Ilya"]),
//             ProductsTab(["Hello", "World"]),
//             ProductsTab(["My", "Name"]),
//             ProductsTab(["Is", "Ilya"]),
//             ProductsTab(["Hello", "World"]),
//             ProductsTab(["My", "Name"]),
//           ],
//         ),
//       ),
//     );
//   }
// }
