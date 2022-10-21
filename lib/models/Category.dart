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
    image: "assets/images/bubble_tea.webp",
    title: "Trà sữa",
    // bgColor: Color.fromARGB(255, 66, 235, 136),
  ),
  Category(
    image: "assets/images/chicken_img.webp",
    title: "Gà rán",
    //bgColor: Color.fromARGB(255, 66, 235, 136),
  ),
  Category(
    image: "assets/images/pizza_img.webp",
    title: "Pizza",
    //bgColor: Color.fromARGB(255, 66, 235, 136),
  ),
  Category(
    image: "assets/images/noodle_img.webp",
    title: "Mì ý",
    //bgColor: Color.fromARGB(255, 66, 235, 136),
  ),

  // Category(
  //   image: "assets/images/seafood_pizza.jpg",
  //   title: "Pizza hải sản",
  // ),
];
