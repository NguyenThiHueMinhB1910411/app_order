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
          Container(
            height: 150,
            width: 150,
            color: Color.fromARGB(255, 255, 244, 208),
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    //color: kPrimaryColor.withOpacity(0.13),
                    // color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage('assets/images/seafood_pizza.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: 20,

                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    //color: kPrimaryColor.withOpacity(0.13),
                    // color: Colors.white,
                  ),

                  // color: Colors.white,
                ),
              ],
            ),
          ),
          // Image.asset('assets/images/seafood_pizza.jpg',width: 100,),

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
            svgScr: 'assets/images/spaghetti_tomato_chesse.jpg',

            title: "Mì ý sốt cà chua",
            shopName: "Mì ý",

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
