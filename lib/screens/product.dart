import 'package:flutter/material.dart';
import '../classes/product.dart';
import '../classes/product_page_text_styles.dart';

class ProductPage extends StatelessWidget {
  ProductPage(this.product);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(right: 10.0, left: 10.0, top: 5.0),
      child: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: 300,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.network(product.imageUri),
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: product.name + "\n",
                        style: ProductTextStyle.h1(context)),
                    TextSpan(
                        text: product.subname + "\n",
                        style: ProductTextStyle.h3(context)),
                  ],
                ),
              ),
              SizedBox(height: 100),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: product.description + "\n",
                      style: ProductTextStyle.h2(context)),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
