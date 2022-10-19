import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amberAccent,
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(color: Color.fromARGB(255, 241, 245, 241), boxShadow: [
        // BoxShadow(
        //   offset: Offset(0, -7),
        //   blurRadius: 33,
        //   color: Color(0xFF6DAED9).withOpacity(0.11),
        // )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.home,
              // color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.favorite),
            // color: Colors.red[900],
            onPressed: () {},
          ),
          
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            // color: Color.fromARGB(255, 245, 167, 23),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.person,
              // color: Colors.green,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
