// Модель данных продукта
// Ответ из MySQL в виде таблицы, преобразуется вот в такие объекты

class Product {
  int id;
  String name;
  String subname;
  String description;
  String imageUri;

  Product(this.id, this.name, this.subname, this.description, this.imageUri);
}
