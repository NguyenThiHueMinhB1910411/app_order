import 'package:flutter/material.dart';
import 'package:order_food/models/Category.dart';
import 'package:order_food/screens/home/details/details-screen.dart';
import 'package:order_food/screens/home/home_screen.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
        show_categories.length,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 20),
          child: CategoryCard(
            // image: "assets/images/bubble_tea.webp",
            //title: "Trà sữa",
            image: show_categories[index].image,
            title: show_categories[index].title,
            // bgColor: show_categories[index].bgColor,

            //press: () {},
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsScreen();
                  },
                ),
              );
            },
          ),
        ),
      )),
    );
  }
}
