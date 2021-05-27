import 'package:flutter/material.dart';
import 'package:flutter_shop_application/classes/mysql.dart';
import '../screens/product.dart';

class ProductsTab extends StatefulWidget {
  ProductsTab(this.categoryId);
  final int categoryId;

  @override
  _ProductsTabState createState() => _ProductsTabState();
}

class _ProductsTabState extends State<ProductsTab>
    with AutomaticKeepAliveClientMixin<ProductsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<dynamic>>(
        future: Mysql.getProductsByCategoryIndex(widget.categoryId),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return Container(
              child: Center(
                child: Text(
                  "Загрузка...",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
            );
          } else {
            return ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(snapshot.data[index].name),
                  subtitle: Text(snapshot.data[index].subname),
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

  @override
  bool get wantKeepAlive => true;
}

// class ProductsTab extends StatelessWidget {
//   ProductsTab(this.categoryId);
//   final int categoryId;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: FutureBuilder<List<dynamic>>(
//         future: Mysql.getProductsByCategoryIndex(this.categoryId),
//         builder: (BuildContext context, AsyncSnapshot snapshot) {
//           if (snapshot.data == null) {
//             return Container(
//               child: Center(
//                 child: Text("Loading..."),
//               ),
//             );
//           } else {
//             return ListView.builder(
//               itemCount: snapshot.data.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return ListTile(
//                   title: Text(snapshot.data[index].name),
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }
