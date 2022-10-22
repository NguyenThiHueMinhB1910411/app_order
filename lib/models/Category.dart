import 'package:flutter/animation.dart';

class Category {
  final String image, title;
  // final Color bgColor;
  Category({
    required this.image,
    required this.title,
    //required this.bgColor,
  });

  get price => null;
}

List<Category> show_categories = [
  Category(
    image: "assets/images/milk_tea_canva.png",
    title: "Trà sữa",
    // bgColor: Color.fromARGB(255, 66, 235, 136),
  ),
  Category(
    image: "assets/images/chicken_canva.png",
    title: "Gà rán",
    //bgColor: Color.fromARGB(255, 66, 235, 136),
  ),
  Category(
    image: "assets/images/pizza_canva.png",
    title: "Pizza",
    //bgColor: Color.fromARGB(255, 66, 235, 136),
  ),
  Category(
    image: "assets/images/noodle_canva.png",
    title: "Mì",
    //bgColor: Color.fromARGB(255, 66, 235, 136),
  ),

  // Category(
  //   image: "assets/images/seafood_pizza.jpg",
  //   title: "Pizza hải sản",
  // ),
];
