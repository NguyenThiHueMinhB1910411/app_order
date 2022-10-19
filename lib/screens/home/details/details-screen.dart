import 'package:flutter/material.dart';
import 'package:order_food/constants.dart';
import 'package:order_food/screens/home/components/body.dart';
import 'package:order_food/screens/home/details/components/app_bar.dart';
import 'package:order_food/screens/home/details/components/item_image.dart';
import 'package:order_food/screens/home/details/components/order_button.dart';
import 'package:order_food/screens/home/details/components/title_price_rating.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 205, 206, 228),
      appBar: detailsAppBar(context),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        ItemImage(
          imgSrc: "assets/images/seafood_pizza.jpg",
          size: size,
        ),
        Expanded(
          child: ItemInfo(),
        )
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      child: Column(
        children: <Widget>[
          shopeName(name: "Pizza hải sản"),
          TitlePriceRating(
            name: "Pizzaaaa",
            numberOfReview: 24,
            rating: 4,
            price: 15,
            // onRatingChanged: (){},
          ),
          Text(
            "Một chiếc bánh pizza hải sản thường được chế biến từ các nguyên liệu hải sản tươi như mực, thanh cua, tôm cùng một số loại rau khác như ớt chuông, bông cải, phô mai. Tổng thể của chiếc bánh tạo nên một hương vị tươi ngon từ hải sản cùng mùi thơm ngậy của phô mai cùng các nguyên liệu khác",
            style: TextStyle(height: 1.5, fontSize: 18),
          ),
          SizedBox(height: size.height * 0.1),
          // khong gian trong cua 10%
          OrderButton(
            size: size,
            press: () {},
          )
        ],
      ),
    );
  }

  Row shopeName({required String name}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: ksecondaryColor,
        ),
        SizedBox(width: 10),
        Text(name)
      ],
    );
  }
}


// class TitlePriceRating extends StatelessWidget {
//   const TitlePriceRating({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
              
//               children: <Widget>[
//                 Text(
//                   "Pizza",
//                   style: Theme.of(context).textTheme.headline5,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 20),
//                   child: Row(
//                     children: [
//                       SizedBox(height: 10),
//                       Wrap(
//                           children: List.generate(5, (index) {
//                         return Icon(
//                           Icons.star,
//                           color: Colors.yellow[800],
//                         );
//                       })),
//                       Text("24 reviews")
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(

//             child: Container(
//               alignment: Alignment.topCenter,

//               child: Text(
//                 "95.000 VND",
//                 style: Theme.of(context).textTheme.titleLarge?.copyWith(
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold,
//                     ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
