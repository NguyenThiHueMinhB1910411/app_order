import 'package:flutter/foundation.dart';
import 'package:order_food/screens/Screens.dart';
import 'package:order_food/services/products_service.dart';
import 'package:order_food/models/Product.dart';

import 'package:order_food/models/auth_token.dart';

class ProductsManager with ChangeNotifier {
  List<Product> _items = [
    // Product(
    //   id: "01",
    //   image: "assets/images/tra_sua_truyen_thong.png",
    //   title: "Trà sữa truyền thống",
    //   price: 25000,
    //   type: " TraSua",
    //   description:
    //       " Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào (thay đổi từ đường hoặc mật ong thành muối hoặc bạch đậu khấu-thảo quả). Bột trà sữa pha sẵn là một sản phẩm được sản xuất hàng ",
    //   // bgColor: const Color(0xFFEFEFF2),
    // ),
    // Product(
    //   id: "02",
    //   image: "assets/images/tra_sua_matcha.png",
    //   title: "Trà sữa matcha",
    //   price: 35000,
    //   type: " TraSua",
    //   description:
    //       " Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào (thay đổi từ đường hoặc mật ong thành muối hoặc bạch đậu khấu-thảo quả). Bột trà sữa pha sẵn là một sản phẩm được sản xuất hàng ",
    //   // bgColor: const Color(0xFFEFEFF2),
    // ),
  ];

  final ProductsService _productsService;

  ProductsManager([AuthToken? authToken])
      : _productsService = ProductsService(authToken);

  set authToken(AuthToken? authToken) {
    _productsService.authToken = authToken;
  }

  Future<void> fetchProducts([bool filterByUser = false]) async {
    _items = await _productsService.fetchProducts(filterByUser);
    notifyListeners();
  }



  // void addProduct(Product product) {
  //   _items.add(
  //     product.copyWith(
  //       id: 'p${DateTime.now().toIso8601String()}',
  //     ),
  //   );
  //   notifyListeners();
  // }

  //update
 

  // void updateProduct(Product product) {
  //   final index = _items.indexWhere((item) => item.id == product.id);
  //   if (index >= 0) {
  //     _items[index] = product;
  //     notifyListeners();
  //   }
  // }

  // Future<void> toggleFavoriteStatus(Product product) async {
  //   final savedStatus = product.isFavorite;
  //   product.isFavorite = !savedStatus;

  //   if (!await _productsService.saveFavoriteStatus(product)) {
  //     product.isFavorite = savedStatus;
  //   }
  // }

  // void toggleFavoriteStatus(Product product) {
  //   final savedStatus = product.isFavorite;
  //   product.isFavorite = !savedStatus;
  // }

// delete
  Future<void> addProduct(Product product) async {
    final newProduct = await _productsService.addProduct(product);
    if (newProduct != null) {
      _items.add(newProduct);
      notifyListeners();
    }
  }
  Future<void> updateProduct(Product product) async {
    final index = _items.indexWhere((item) => item.id == product.id);
    if (index >= 0) {
      if (await _productsService.updateProduct(product)) {
        _items[index] = product;
        notifyListeners();
      }
    }
  }

  Future<void> deleteProduct(String id) async {
    final index = _items.indexWhere((item) => item.id == id);
    Product? existingProduct = _items[index];
    _items.removeAt(index);
    notifyListeners();

    if (!await _productsService.deleteProduct(id)) {
      _items.insert(index, existingProduct);
      notifyListeners();
    }
  }

  // void deleteProduct(String id) {
  //   final index = _items.indexWhere((item) => item.id == id);
  //   _items.removeAt(index);
  //   notifyListeners();
  // }

  int get itemCount {
    return _items.length;
  }

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }
}
