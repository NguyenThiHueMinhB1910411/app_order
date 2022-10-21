import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:order_food/constants.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.green,
    elevation: 0,
    leading: IconButton(
      icon: const Icon(Icons.menu),
      // icon: SvgPicture.asset("assets/icons/menu.svg"),
      onPressed: () {},
    ),
    title: RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: "HM",
            style: TextStyle(color: Colors.white),
          ),
          TextSpan(
            text: "Food",
            style: TextStyle(color: kPrimaryColor),
          ),
        ],
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: const Icon(Icons.doorbell),
        onPressed: () {},
      ),
    ],
  );
}
