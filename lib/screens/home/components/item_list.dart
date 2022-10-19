import 'package:flutter/material.dart';
import 'package:order_food/constants.dart';
import 'package:order_food/screens/home/components/item_card.dart';
import 'package:order_food/screens/home/details/details-screen.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            svgScr: 'assets/images/seafood_pizza.jpg',
            title: "Pizza hải sản",
            shopName: "MacDonald's",
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
          ItemCard(
            svgScr: 'assets/images/seafood_pizza.jpg',
            title: "Pizza hải sản",
            shopName: "MacDonald's",
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
          ItemCard(
            svgScr: 'assets/images/seafood_pizza.jpg',
            title: "Pizza hải sản",
            shopName: "MacDonald's",
            // press: () {},
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
        ],
      ),
    );
  }
}
