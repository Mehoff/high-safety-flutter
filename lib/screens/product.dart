import 'package:flutter/material.dart';
import '../classes/product.dart';
import '../classes/product_page_text_styles.dart';

// Виджет экрана отображения конкретного продукта
// В качестве параметра передается объект продукта

class ProductPage extends StatelessWidget {
  // Вот конструктор этого класса, он принимает продукт в качестве параметра
  ProductPage(this.product);
  final Product product;

  // Вёрстка отображения продукта на экране
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
                  // Image.network метод который принимает ссылку на картинку,
                  // Загружает её и отображает
                  child: Image.network(product.imageUri),
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    // Имя и второе имя продукта
                    TextSpan(
                        text: product.name + "\n",
                        style: ProductTextStyle.h1(context)),
                    TextSpan(
                        text: product.subname + "\n",
                        style: ProductTextStyle.h3(context)),
                  ],
                ),
              ),
              // Отступ
              SizedBox(height: 100),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      // Описание продукта
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
