import 'package:flutter/material.dart';
import 'package:order_food/models/Product.dart';
import 'package:order_food/screens/home/details/details-screen.dart';
import 'package:order_food/screens/home/home_screen.dart';

class AllProductInListItemColumn extends StatelessWidget {
  const AllProductInListItemColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Trà sữa",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w200, fontSize: 50),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
                show_product.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: ProductCard(
                        image: show_product[index].image,
                        title: show_product[index].title,
                        price: show_product[index].price,
                        bgColor: show_product[index].bgColor,
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DetailsScreen();
                              },
                            ),
                          );
                        },
                      ),
                    )),
          ),
        )
      ],
    );
  }
}

////Listview
///
///
// class AllProductInListItemColumn extends StatelessWidget {
//   const AllProductInListItemColumn({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         Text(
//           "Trà sữa",
//           style: TextStyle(
//             color: Colors.black,
//             fontWeight: FontWeight.w200,
//             fontSize: 50,
//             backgroundColor: Color.fromARGB(255, 224, 15, 15),
//           ),
//         ),
//         Column(
//           children: List.generate(
//               show_product.length,
//               (index) => Padding(
//                     padding: const EdgeInsets.only(left: 20),
//                     child: ProductCard(
//                       image: show_product[index].image,
//                       title: show_product[index].title,
//                       price: show_product[index].price,
//                       bgColor: show_product[index].bgColor,
//                       //press: () {},
//                       press: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) {
//                               return DetailsScreen();
//                             },
//                           ),
//                         );
//                       },
//                     ),
//                   )),
//         )
//       ],
//     );
//   }
// }

// class ListView extends StatelessWidget {
//   const ListView({
//     Key? key,
//     required List<Widget> children,
//   }) : super(key: key);

//   @override
//   Widget buid(BuildContext context) {
//     return ListView(
//       children: [
//         Text(
//           "Trà sữa",
//           style: TextStyle(
//               color: Colors.black, fontWeight: FontWeight.w200, fontSize: 50),
//         ),
//         Column(
//           children: List.generate(
//               show_product.length,
//               (index) => Padding(
//                     padding: const EdgeInsets.only(left: 20),
//                     child: ProductCard(
//                       image: show_product[index].image,
//                       title: show_product[index].title,
//                       price: show_product[index].price,
//                       bgColor: show_product[index].bgColor,
//                       //press: () {},
//                       press: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) {
//                               return DetailsScreen();
//                             },
//                           ),
//                         );
//                       },
//                     ),
//                   )),
//         )
      
//       ],
//     );
  
  
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }
