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
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.share_rounded),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.more_horiz),
        onPressed: () {},
      ),
    ],
  );
}
