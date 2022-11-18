import 'package:order_food/screens/Screens.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:order_food/constants.dart';
import 'package:order_food/screens/cart/cart_manager.dart';
import 'package:order_food/screens/home/components/body.dart';
import 'package:order_food/screens/home/components/bottom_nav_bar.dart';
import 'package:order_food/screens/home/details/components/app_bar.dart';
import 'package:order_food/screens/home/details/components/item_image.dart';
import 'package:order_food/screens/home/details/components/add_to_card.dart';
import 'package:order_food/screens/home/details/components/title_price_rating.dart';
import 'package:order_food/models/Product.dart';

class DetailsScreen extends StatefulWidget {
  static const routeName = '/product-detail';
  final Product product;
  const DetailsScreen(
    this.product, {
    super.key,
  });

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 205, 206, 228),
      appBar: detailsAppBar(context),
      body: Column(
        children: <Widget>[
          Container(
            height: 200,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(widget.product.image))),
          ),
          // ItemImage(
          //   imgSrc: product_d.image
          //   //size: 50,
          // ),
          Expanded(
            child: Container(
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
                  Text('${widget.product.title}'),
                  TitlePriceRating(
                    name: widget.product.title,
                    numberOfReview: 24,
                    rating: 4,
                    price: widget.product.price,
                    // onRatingChanged: (){},
                  ),
                  Text(
                    "Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào (thay đổi từ đường hoặc mật ong thành muối hoặc bạch đậu khấu-thảo quả). Bột trà sữa pha sẵn là một sản phẩm được sản xuất hàng ",
                    style: TextStyle(height: 1.5, fontSize: 18),
                  ),
                  SizedBox(height: 160),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 400,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 70, 187, 136),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {
                                  final cart = context.read<CartManager>();
                                  cart.addItem(widget.product);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return CartScreen();
                                      },
                                    ),
                                  );
                                },
                                icon: const Icon(Icons.shopping_bag),
                                color: Colors.white,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Add to cart",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// @override
// Widget Body(Product product_d, BuildContext context) {
//   //Size size = MediaQuery.of(context).size;
//   return 
  // Column(
  //   children: <Widget>[
  //     Container(
  //       height: 200,
  //       decoration: BoxDecoration(
  //           image: DecorationImage(image: AssetImage(product_d.image))),
  //     ),
  //     // ItemImage(
  //     //   imgSrc: product_d.image
  //     //   //size: 50,
  //     // ),
  //     Expanded(
  //       child: Container(
  //         padding: EdgeInsets.all(20),
  //         width: double.infinity,
  //         decoration: BoxDecoration(
  //             color: Colors.white,
  //             borderRadius: BorderRadius.only(
  //               topLeft: Radius.circular(30),
  //               topRight: Radius.circular(30),
  //             )),
  //         child: Column(
  //           children: <Widget>[
  //             Text('${product_d.title}'),
  //             TitlePriceRating(
  //               name: product_d.title,
  //               numberOfReview: 24,
  //               rating: 4,
  //               price: product_d.price,
  //               // onRatingChanged: (){},
  //             ),
  //             Text(
  //               "Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào (thay đổi từ đường hoặc mật ong thành muối hoặc bạch đậu khấu-thảo quả). Bột trà sữa pha sẵn là một sản phẩm được sản xuất hàng ",
  //               style: TextStyle(height: 1.5, fontSize: 18),
  //             ),
  //             SizedBox(height: 160),
  //             Container(
  //               padding: EdgeInsets.all(10),
  //               width: 400,
  //               height: 60,
  //               decoration: BoxDecoration(
  //                 color: Color.fromARGB(255, 70, 187, 136),
  //                 borderRadius: BorderRadius.circular(10),
  //               ),
  //               child: Material(
  //                 color: Colors.transparent,
  //                 child: InkWell(
  //                   onTap: () {
  //                     final cart = context.read<CartManager>();
  //                     cart.addItem(product_d);
  //                   },
  //                   child: Padding(
  //                     padding: const EdgeInsets.all(0.0),
  //                     child: Row(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: [
  //                         IconButton(
  //                           onPressed: () {},
  //                           icon: const Icon(Icons.shopping_bag),
  //                           color: Colors.white,
  //                         ),
  //                         SizedBox(width: 10),
  //                         Text(
  //                           "Add to cart",
  //                           style: TextStyle(
  //                             color: Colors.white,
  //                             fontWeight: FontWeight.bold,
  //                             fontSize: 18,
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     )
  //   ],
  // );
//}

// class ItemInfo extends StatelessWidget {
//   const ItemInfo({
//     Key? key,
//   }) : super(key: key);

//   @override
  // Widget build(BuildContext context) {
  //   Size size = MediaQuery.of(context).size;

  //   return 
  // }

//   Row shopeName({required String name}) {
//     return Row(
//       children: <Widget>[
//         Icon(
//           Icons.location_on,
//           color: ksecondaryColor,
//         ),
//         SizedBox(width: 10),
//         Text(name)
//       ],
//     );
//   }
// }
