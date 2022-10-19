import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:order_food/constants.dart';

class SearchBox extends StatelessWidget {
  
  final ValueChanged<String> ? onchanged;
  const SearchBox({
    
    Key? key,
    this.onchanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: ksecondaryColor.withOpacity(0.32)),
      ),
      child: TextField(
        onChanged: onchanged,
        decoration: InputDecoration(
          border: InputBorder.none,

          icon: const Icon(Icons.search),
          // icon: SvgPicture.asset("assets/icons/search.svg"),
          hintText: "Search Here",
          hintStyle: TextStyle(color: ksecondaryColor),
        ),
      ),
    );
  }
}
