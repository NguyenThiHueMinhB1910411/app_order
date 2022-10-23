import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product(
      {required this.image,
      required this.title,
      required this.price,
      this.bgColor = const Color(0xFFEFEFF2)});
}

List<Product> show_product = [
  //Tra sua
  Product(
    image: "assets/images/tra_sua_truyen_thong.png",
    title: "Trà sữa truyền thống",
    price: 25000,
    bgColor: const Color(0xFFEFEFF2),
  ),
  Product(
    image: "assets/images/tra_sua_matcha.png",
    title: "Trà sữa matcha",
    price: 35000,
    bgColor: const Color(0xFFEFEFF2),
  ),
  Product(
    image: "assets/images/tra_sua_tran_chau_hoang_kim.png",
    title: "Trà sữa trân châu hoàng kim",
    price: 35000,
    bgColor: const Color(0xFFEFEFF2),
  ),
  Product(
    image: "assets/images/tra_sua_choco.png",
    title: "Trà sữa sô cô la",
    price: 30000,
    bgColor: const Color(0xFFEFEFF2),
  ),
  Product(
    image: "assets/images/tra_sua_dau.png",
    title: "Trà sữa dâu",
    price: 28000,
    bgColor: const Color(0xFFEFEFF2),
  ),
  Product(
    image: "assets/images/tra_sua_dao.png",
    title: "Trà sữa đào",
    price: 25000,
    bgColor: const Color(0xFFEFEFF2),
  ),
  // ga ran
  Product(
    image: "assets/images/chicken_img.webp",
    title: "Gà rán sốt mật ong",
    price: 45000,
    bgColor: const Color(0xFFEFEFF2),
  ),
  Product(
    image: "assets/images/pizza_img.webp",
    title: "Pizza hải sản",
    price: 50000,
    bgColor: const Color(0xFFEFEFF2),
  ),
  Product(
    image: "assets/images/noodle_img.webp",
    title: "Mì ý sốt cà chua",
    price: 30000,
    bgColor: const Color(0xFFEFEFF2),
  ),
];
