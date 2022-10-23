import 'package:flutter/material.dart';

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
    return Container(
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
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.shopping_bag,
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
                // IconButton(
                //   onPressed: () {},
                //   icon: Icon(
                //     Icons.add,
                //     color: Colors.green,
                //   ),
                // ),
                // IconButton(
                //   onPressed: () {},
                //   icon: Icon(
                //     Icons.remove,
                //     color: Colors.red,
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
