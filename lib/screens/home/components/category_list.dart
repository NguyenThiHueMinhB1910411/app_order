import 'package:flutter/material.dart';
import 'package:order_food/models/Category.dart';
import 'package:order_food/screens/home/components/app_bar.dart';
import 'package:order_food/screens/home/components/bottom_nav_bar.dart';
import 'package:order_food/screens/home/components/category.dart';
import 'package:order_food/screens/home/components/column_category_list.dart';
import 'package:order_food/screens/home/details/components/app_bar.dart';
import 'package:order_food/screens/home/home_screen.dart';
import 'package:order_food/screens/home/components/category_list.dart';

class ShowCategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const outlineInputBorder = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide.none,
    );

    return Scaffold(
      appBar: detailsAppBar(context),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   "Trà sữa",
                //   style: TextStyle(
                //       fontWeight: FontWeight.w300,
                //       fontSize: 60,
                //       color: Colors.black),
                // ),
                AllProductInListItemColumn(),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  Container Banner() {
    return Container(
      child: Container(
          padding: EdgeInsets.only(bottom: 20),
          margin: EdgeInsets.only(bottom: 30),
          width: 700,
          height: 200,
          child: Image.asset("assets/images/milk_tea_canva.png")),
    );
  }
}
