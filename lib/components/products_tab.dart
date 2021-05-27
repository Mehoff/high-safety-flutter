import 'package:flutter/material.dart';

class ProductsTab extends StatelessWidget {
  ProductsTab(this.products);
  final List<String> products;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: products.length > 0
            ? products.map((p) => Text(p)).toList()
            : Text("Нет данных"),
      ),
    );
  }
}
