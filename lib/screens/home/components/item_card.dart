import 'package:flutter/material.dart';
import 'package:order_food/constants.dart';

class ItemCard extends StatelessWidget {
  final String title, shopName, svgScr;
  final Function press;
  const ItemCard({
    Key? key,
    required this.title,
    required this.shopName,
    required this.svgScr,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //chieu cao va chieu rong cua man hinh
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 20),
      // padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 20,
            color: Color(0xFFB0CCE1).withOpacity(0.32),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Column(
            children: [
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.13),
                      // shape: BoxShape.circle,
                    ),
                    child: Image(
                      image: AssetImage(
                        // 'assets/images/seafood_pizza.jpg'
                        svgScr,
                      ),
                      width: 100,
                      // width: size.width * 0.18,
                    ),
                  ),
                  Text(title),
                  SizedBox(height: 10),
                  Text(
                    shopName,
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
