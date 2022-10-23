import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  final String imgSrc;
  const ItemImage({
    Key? key,
    required this.imgSrc,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // Container(
    //   color: Colors.green,
    // );
    return Image.asset(
      imgSrc,
      height: 250,
      width: 250,
      
      //width: double.infinity,
      fit: BoxFit.fill,
    );
  }
}
