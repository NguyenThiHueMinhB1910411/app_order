import 'package:flutter/material.dart';

AppBar detailsAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    backgroundColor: Colors.green,
    //backgroundColor: Color.fromARGB(255, 70, 187, 136),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.more_horiz),
        onPressed: () {},
      ),
    ],
  );
}
