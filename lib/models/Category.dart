import 'package:flutter/animation.dart';

class Category {
  final String image, title;
  final String type;
  // final Color bgColor;
  Category({
    required this.image,
    required this.title,
    required this.type,
    //required this.bgColor,
  });

  get price => null;
}

List<Category> show_categories = [
  Category(
    image: "assets/images/milk_tea_canva.png",
    title: "Trà sữa",
    type: "TraSua",
    // bgColor: Color.fromARGB(255, 66, 235, 136),
  ),
  Category(image: "assets/images/tra_canva.png", title: "Trà", type: "Tra"
      //bgColor: Colo,r.fromARGB(255, 66, 235, 136),
      ),
  Category(
    image: "assets/images/da_xay_canva.png",
    title: "Đá xay",
    type: "DaXay",
    //bgColor: Color.fromARGB(255, 66, 235, 136),
  ),
  Category(
    image: "assets/images/latte_canva.png",
    title: "Latte",
    type: "Latte",
    //bgColor: Color.fromARGB(255, 66, 235, 136),
  ),

  // Category(
  //   image: "assets/images/seafood_pizza.jpg",
  //   title: "Pizza hải sản",
  // ),
];
