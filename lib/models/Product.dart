// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Product {
  final String? id;
  final String image, title;
  final double price;
  final String type;
  final Color bgColor;
  final String description;

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'type': type,
      'price': price,
      'image': image,
      'bgColor': bgColor,
      'description': description,
    };
  }

  static Product fromJson(Map<String, dynamic> json) {
    Product product = Product(
      id: json['id'],
      title: json['title'],
      type: json['type'],
      price: json['price'],
      image: json['image'],
      description: json['description'],
    );
    print(product);
    return product;
  }

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.type,
    required this.image,
    this.bgColor = const Color(0xFFEFEFF2),
    required this.description,
  });

  Product copyWith({
    String? id,
    String? image,
    String? title,
    double? price,
    String? type,
    Color? bgColor,
    String? description,
  }) {
    return Product(
      id: id ?? this.id,
      image: image ?? this.image,
      title: title ?? this.title,
      price: price ?? this.price,
      type: type ?? this.type,
      bgColor: bgColor ?? this.bgColor,
      description: description ?? this.description,
    );
  }
}

List<Product> show_product = [
  //Tra sua
  Product(
    id: "01",
    image: "assets/images/tra_sua_truyen_thong.png",
    title: "Trà sữa truyền thống",
    price: 25000,
    type: " Trà sữa",
    bgColor: const Color(0xFFEFEFF2),
    description:
        " Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào (thay đổi từ đường hoặc mật ong thành muối hoặc bạch đậu khấu-thảo quả). Bột trà sữa pha sẵn là một sản phẩm được sản xuất hàng ",
  ),
  Product(
    id: "02",
    image: "assets/images/tra_sua_matcha.png",
    title: "Trà sữa matcha",
    price: 35000,
    type: " Trà sữa",
    bgColor: const Color(0xFFEFEFF2),
    description:
        " Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào (thay đổi từ đường hoặc mật ong thành muối hoặc bạch đậu khấu-thảo quả). Bột trà sữa pha sẵn là một sản phẩm được sản xuất hàng ",
  ),
  Product(
    id: "03",
    image: "assets/images/tra_sua_tran_chau_hoang_kim.png",
    title: "Trà sữa trân châu hoàng kim",
    price: 35000,
    type: " Trà sữa",
    bgColor: const Color(0xFFEFEFF2),
    description:
        " Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào (thay đổi từ đường hoặc mật ong thành muối hoặc bạch đậu khấu-thảo quả). Bột trà sữa pha sẵn là một sản phẩm được sản xuất hàng ",
  ),
  Product(
    id: "04",
    image: "assets/images/tra_sua_choco.png",
    title: "Trà sữa sô cô la",
    price: 30000,
    type: " Trà sữa",
    bgColor: const Color(0xFFEFEFF2),
    description:
        " Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào (thay đổi từ đường hoặc mật ong thành muối hoặc bạch đậu khấu-thảo quả). Bột trà sữa pha sẵn là một sản phẩm được sản xuất hàng ",
  ),
  Product(
    id: "05",
    image: "assets/images/tra_sua_dau.png",
    title: "Trà sữa dâu",
    price: 28000,
    type: " Trà sữa",
    bgColor: const Color(0xFFEFEFF2),
    description:
        " Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào (thay đổi từ đường hoặc mật ong thành muối hoặc bạch đậu khấu-thảo quả). Bột trà sữa pha sẵn là một sản phẩm được sản xuất hàng ",
  ),
  // Product(
  //   id: "06",
  //   image: "assets/images/tra_sua_dao.png",
  //   title: "Trà sữa đào",
  //   price: 25000,
  //   type: " Trà sữa",
  //   bgColor: const Color(0xFFEFEFF2),
  // ),
  //Da xay
  Product(
    id: "07",
    image: "assets/images/dau_da_xay.png",
    title: "Strawberry Cookie Smoothie",
    price: 25000,
    type: " Đá xay",
    bgColor: const Color(0xFFEFEFF2),
    description:
        " Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào (thay đổi từ đường hoặc mật ong thành muối hoặc bạch đậu khấu-thảo quả). Bột trà sữa pha sẵn là một sản phẩm được sản xuất hàng ",
  ),
  Product(
    id: "08",
    image: "assets/images/dau_da_xay_oreo.png",
    title: "Strawberry Oreo Smoothie",
    price: 35000,
    type: " Đá xay",
    bgColor: const Color(0xFFEFEFF2),
    description:
        " Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào (thay đổi từ đường hoặc mật ong thành muối hoặc bạch đậu khấu-thảo quả). Bột trà sữa pha sẵn là một sản phẩm được sản xuất hàng ",
  ),
  Product(
    id: "09",
    image: "assets/images/milk_cream_da_xay.png",
    title: "Okinawa Milk Foam Smoothie",
    price: 35000,
    type: " Đá xay",
    bgColor: const Color(0xFFEFEFF2),
    description:
        " Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào (thay đổi từ đường hoặc mật ong thành muối hoặc bạch đậu khấu-thảo quả). Bột trà sữa pha sẵn là một sản phẩm được sản xuất hàng ",
  ),
  Product(
    id: "10",
    image: "assets/images/khoai_mon_da_xay.png",
    title: "Khoai môn đá xay",
    price: 30000,
    type: " Đá xay",
    bgColor: const Color(0xFFEFEFF2),
    description:
        " Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào (thay đổi từ đường hoặc mật ong thành muối hoặc bạch đậu khấu-thảo quả). Bột trà sữa pha sẵn là một sản phẩm được sản xuất hàng ",
  ),
  Product(
    id: "11",
    image: "assets/images/xoai_da_xay.png",
    title: "Xoài đá xay",
    price: 28000,
    type: " Đá xay",
    bgColor: const Color(0xFFEFEFF2),
    description:
        " Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào (thay đổi từ đường hoặc mật ong thành muối hoặc bạch đậu khấu-thảo quả). Bột trà sữa pha sẵn là một sản phẩm được sản xuất hàng ",
  ),
  // Product(
  //   id: "12",
  //   image: "assets/images/yakult_dao_da_xay.png",
  //   title: "Yakult Đào Đá Xay",
  //   price: 25000,
  //  type: " Đá xay",
  //   bgColor: const Color(0xFFEFEFF2),
  // ),
  //Trà
  Product(
    id: "13",
    image: "assets/images/tra_olong_xoai.png",
    title: "Trà Alisan Xoài",
    price: 25000,
    type: " Trà",
    bgColor: const Color(0xFFEFEFF2),
    description:
        " Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào (thay đổi từ đường hoặc mật ong thành muối hoặc bạch đậu khấu-thảo quả). Bột trà sữa pha sẵn là một sản phẩm được sản xuất hàng ",
  ),
  Product(
    id: "14",
    image: "assets/images/tra_bi_dao.png",
    title: "Trà bí đao",
    price: 25000,
    type: " Trà",
    bgColor: const Color(0xFFEFEFF2),
    description:
        " Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào (thay đổi từ đường hoặc mật ong thành muối hoặc bạch đậu khấu-thảo quả). Bột trà sữa pha sẵn là một sản phẩm được sản xuất hàng ",
  ),
  Product(
    id: "15",
    image: "assets/images/tra_den.png",
    title: "Trà đen",
    price: 25000,
    type: " Trà",
    bgColor: const Color(0xFFEFEFF2),
    description:
        " Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào (thay đổi từ đường hoặc mật ong thành muối hoặc bạch đậu khấu-thảo quả). Bột trà sữa pha sẵn là một sản phẩm được sản xuất hàng ",
  ),
  Product(
    id: "16",
    image: "assets/images/tra_gao_rang.png",
    title: "Trà gạo rang",
    price: 25000,
    type: " Trà",
    bgColor: const Color(0xFFEFEFF2),
    description:
        " Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào (thay đổi từ đường hoặc mật ong thành muối hoặc bạch đậu khấu-thảo quả). Bột trà sữa pha sẵn là một sản phẩm được sản xuất hàng ",
  ),
  Product(
    id: "17",
    image: "assets/images/tra_xanh.png",
    title: "Trà xanh",
    price: 25000,
    type: " Trà",
    bgColor: const Color(0xFFEFEFF2),
    description:
        " Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào (thay đổi từ đường hoặc mật ong thành muối hoặc bạch đậu khấu-thảo quả). Bột trà sữa pha sẵn là một sản phẩm được sản xuất hàng ",
  ),
  // Product(
  //   id: "18",
  //   image: "assets/images/tra_xanh_long_nhan_tao_do.png",
  //   title: "Trà xanh long nhãn táo đỏ",
  //   price: 25000,
  //   type: " Trà",
  //   bgColor: const Color(0xFFEFEFF2),
  // ),

  //latte
  Product(
    id: "19",
    image: "assets/images/latte_tra_xanh.png",
    title: "Creme Brulee Matcha",
    price: 25000,
    type: " Latte",
    bgColor: const Color(0xFFEFEFF2),
    description:
        " Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào (thay đổi từ đường hoặc mật ong thành muối hoặc bạch đậu khấu-thảo quả). Bột trà sữa pha sẵn là một sản phẩm được sản xuất hàng ",
  ),
  Product(
    id: "20",
    image: "assets/images/latte_tra_den.png",
    title: "Toffee Black Tea Latte",
    price: 25000,
    type: " Latte",
    bgColor: const Color(0xFFEFEFF2),
    description:
        " Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào (thay đổi từ đường hoặc mật ong thành muối hoặc bạch đậu khấu-thảo quả). Bột trà sữa pha sẵn là một sản phẩm được sản xuất hàng ",
  ),
  Product(
    id: "21",
    image: "assets/images/latte_creme.png",
    title: "Creme Brulee Latte",
    price: 25000,
    type: " Latte",
    bgColor: const Color(0xFFEFEFF2),
    description:
        " Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào (thay đổi từ đường hoặc mật ong thành muối hoặc bạch đậu khấu-thảo quả). Bột trà sữa pha sẵn là một sản phẩm được sản xuất hàng ",
  ),
];
