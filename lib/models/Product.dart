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
  Product(
    image: "assets/images/bubble_tea.webp",
    title: "Trà sữa truyền thống",
    price: 25000,
    bgColor: const Color(0xFFEFEFF2),
  ),
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
