import 'package:flutter/material.dart';
import 'package:order_food/screens/cart/cart_screen.dart';

class OrderButton extends StatelessWidget {
  const OrderButton({
    Key? key,
    required this.size,
    required this.press,
  }) : super(key: key);

  final Size size;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      padding: EdgeInsets.all(10),
      width: size.width * 0.8,
      // no phu 80% tong chieu rong
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 70, 187, 136),
        borderRadius: BorderRadius.circular(10),
      ),

      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press(),
          // onTap: press(){
          //   Navigator.push(context,
          //   MaterialPageRoute(
          //     builder: (context){
          //       return CartScreen();
          //     }
          //     ),

          //   );
          // },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Icon(
                //   Icons.shopping_bag,
                //   color: Colors.white,
                // ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return CartScreen();
                        },
                      ),
                    );
                  },
                  icon: const Icon(Icons.shopping_bag),
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Text(
                  "Add to cart",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),



        ),
      ),
    );
  }
}
