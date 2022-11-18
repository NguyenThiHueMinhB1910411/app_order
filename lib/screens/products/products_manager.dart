import 'package:flutter/foundation.dart';
import 'package:order_food/screens/Screens.dart';

import '../../models/product.dart';

class ProductsManager with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: "01",
      image: "assets/images/tra_sua_truyen_thong.png",
      title: "Trà sữa truyền thống",
      price: 25000,
      type: " TraSua",
      // bgColor: const Color(0xFFEFEFF2),
    ),
    Product(
      id: "02",
      image: "assets/images/tra_sua_matcha.png",
      title: "Trà sữa matcha",
      price: 35000,
      type: " TraSua",
      // bgColor: const Color(0xFFEFEFF2),
    ),
  ];
  int get itemCount {
    return _items.length;
  }

  List<Product> get items {
    return [..._items];
  }

  // List<Product> get favoriteItems {
  //   return _items.where((prodItem) => prodItem.isFavorite).toList();
  // }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }
}
