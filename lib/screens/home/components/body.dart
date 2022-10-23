import 'package:flutter/material.dart';
import 'package:order_food/constants.dart';

import 'package:order_food/components/search_box.dart';
import 'package:order_food/screens/home/components/category_item.dart';
import 'package:order_food/screens/home/components/category_list.dart';
import 'package:order_food/screens/home/components/discount_card.dart';
import 'package:order_food/screens/home/components/item_card.dart';
import 'package:order_food/screens/home/components/item_list.dart';
import 'package:order_food/screens/home/components/bottom_nav_bar.dart';

class BodyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SearchBox(
          onchanged: (value) {},
        ),
        //CategoryList(),
        ItemList(),
        DiscountCard(),
        //BottomNavBar(),
      ],
    );
  }
}





// class CategoryList extends StatelessWidget {
//   const CategoryList({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           CategoryItem(
//             title: "Combo Meal",
//             isActive: true,
//             press: () {},
//           ),
//           CategoryItem(
//             title: "Chicken",
//             press: () {},
//           ),
//           CategoryItem(
//             title: "Beverages",
//             press: () {},
//           ),
//           CategoryItem(
//             title: "Snack & Sides",
//             press: () {},
//           ),
//         ],
//       ),
//     );
//   }
// }

// class CategoryItem extends StatelessWidget {
//   final String title;
//   final bool isActive;
//   final Function press;
//   const CategoryItem({
//     Key? key,
//     this.title,
//     this.isActive = false,
//     this.press,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: press(),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: <Widget>[
//             Text(
//               title,
//               style: isActive ? TextStyle(
//                 color: kTextColor,
//                 fontWeight: FontWeight.bold,
//               )
//               : TextStyle(fontSize: 12),
//             ),
//             if (isActive)
//               Container(
//                 margin: EdgeInsets.symmetric(vertical: 5),
//                 height: 3,
//                 width: 22,
//                 decoration: BoxDecoration(
//                   color: kPrimaryColor,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class SearchBox extends StatelessWidget {
//   final ValueChanged<String> onchanged;
//   const SearchBox({
//     required Key key,
//     required this.onchanged,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(20),
//       padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(50),
//         border: Border.all(color: ksecondaryColor.withOpacity(0.32)),
//       ),
//       child: TextField(
//         onChanged: onchanged,
//         decoration: InputDecoration(
//           border: InputBorder.none,
//           icon: SvgPicture.asset("assets/icons/search.svg"),
//           hintText: "Search Here",
//           hintStyle: TextStyle(color: ksecondaryColor),
//         ),
//       ),
//     );
//   }
// }
