import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final String type;
  final Color bgColor;

  Product(
      {required this.image,
      required this.title,
      required this.price,
      required this.type,
      this.bgColor = const Color(0xFFEFEFF2)});
}

List<Product> show_product = [
  //Tra sua
  Product(
    image: "assets/images/tra_sua_truyen_thong.png",
    title: "Trà sữa truyền thống",
    price: 25000,
    type: " TraSua",
    bgColor: const Color(0xFFEFEFF2),
  ),
  Product(
    image: "assets/images/tra_sua_matcha.png",
    title: "Trà sữa matcha",
    price: 35000,
    type: " TraSua",
    bgColor: const Color(0xFFEFEFF2),
  ),
  Product(
    image: "assets/images/tra_sua_tran_chau_hoang_kim.png",
    title: "Trà sữa trân châu hoàng kim",
    price: 35000,
    type: " TraSua",
    bgColor: const Color(0xFFEFEFF2),
  ),
  Product(
    image: "assets/images/tra_sua_choco.png",
    title: "Trà sữa sô cô la",
    price: 30000,
    type: " TraSua",
    bgColor: const Color(0xFFEFEFF2),
  ),
  Product(
    image: "assets/images/tra_sua_dau.png",
    title: "Trà sữa dâu",
    price: 28000,
    type: " TraSua",
    bgColor: const Color(0xFFEFEFF2),
  ),
  Product(
    image: "assets/images/tra_sua_dao.png",
    title: "Trà sữa đào",
    price: 25000,
    type: " TraSua",
    bgColor: const Color(0xFFEFEFF2),
  ),
  //Da xay
  Product(
    image: "assets/images/dau_da_xay.png",
    title: "Strawberry Cookie Smoothie",
    price: 25000,
    type: " TraSua",
    bgColor: const Color(0xFFEFEFF2),
  ),
  Product(
    image: "assets/images/dau_da_xay_oreo.png",
    title: "Strawberry Oreo Smoothie",
    price: 35000,
    type: " TraSua",
    bgColor: const Color(0xFFEFEFF2),
  ),
  Product(
    image: "assets/images/milk_cream_da_xay.png",
    title: "Okinawa Milk Foam Smoothie",
    price: 35000,
    type: " TraSua",
    bgColor: const Color(0xFFEFEFF2),
  ),
  Product(
    image: "assets/images/khoai_mon_da_xay.png",
    title: "Khoai môn đá xay",
    price: 30000,
    type: " TraSua",
    bgColor: const Color(0xFFEFEFF2),
  ),
  Product(
    image: "assets/images/xoai_da_xay.png",
    title: "Xoài đá xay",
    price: 28000,
    type: " TraSua",
    bgColor: const Color(0xFFEFEFF2),
  ),
  Product(
    image: "assets/images/yakult_dao_da_xay.png",
    title: "Yakult Đào Đá Xay",
    price: 25000,
    type: " TraSua",
    bgColor: const Color(0xFFEFEFF2),
  ),
  //tra
  Product(
    image: "assets/images/tra_olong_xoai.png",
    title: "Trà Alisan Xoài",
    price: 25000,
    type: " Tra",
    bgColor: const Color(0xFFEFEFF2),
  ),
  Product(
    image: "assets/images/tra_bi_dao.png",
    title: "Trà bí đao",
    price: 25000,
    type: " Tra",
    bgColor: const Color(0xFFEFEFF2),
  ),
  Product(
    image: "assets/images/tra_den.png",
    title: "Trà đen",
    price: 25000,
    type: " Tra",
    bgColor: const Color(0xFFEFEFF2),
  ),
  Product(
    image: "assets/images/tra_gao_rang.png",
    title: "Trà gạo rang",
    price: 25000,
    type: " Tra",
    bgColor: const Color(0xFFEFEFF2),
  ),
  Product(
    image: "assets/images/tra_xanh.png",
    title: "Trà xanh",
    price: 25000,
    type: " Tra",
    bgColor: const Color(0xFFEFEFF2),
  ),
  Product(
    image: "assets/images/tra_xanh_long_nhan_tao_do.png",
    title: "Trà xanh long nhãn táo đỏ",
    price: 25000,
    type: " Tra",
    bgColor: const Color(0xFFEFEFF2),
  ),

  //latte
  Product(
    image: "assets/images/latte_tra_xanh.png",
    title: "Creme Brulee Matcha",
    price: 25000,
    type: " Latte",
    bgColor: const Color(0xFFEFEFF2),
  ),
  Product(
    image: "assets/images/latte_tra_den.png",
    title: "Toffee Black Tea Latte",
    price: 25000,
    type: " Latte",
    bgColor: const Color(0xFFEFEFF2),
  ),
  Product(
    image: "assets/images/latte_creme.png",
    title: "Creme Brulee Latte",
    price: 25000,
    type: " Latte",
    bgColor: const Color(0xFFEFEFF2),
  ),
];
