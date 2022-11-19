// import 'package:flutter/material.dart';
// import 'package:order_food/screens/cart/cart_manager.dart';
// import 'package:order_food/screens/shared/app_drawer.dart';

// import "../cart/cart_screen.dart";
// import 'top_right_badge.dart';

// enum FilterOption { favorites, all }

// class ProductOverviewScreen extends StatefulWidget {
//   const ProductOverviewScreen({super.key});

//   @override
//   State<ProductOverviewScreen> createState() => _ProductOverviewScreenState();
// }

// class _ProductOverviewScreenState extends State<ProductOverviewScreen> {


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('MyShop'),
//         actions: <Widget>[
//           buildShoppingCartIcon(),
//         ],
//       ),
//       drawer: const AppDrawer(),
//     );
//   }

//   Widget buildShoppingCartIcon() {
//     return TopRightBadge(
//       data: CartManager().productCount,
//       child: IconButton(
//         icon: const Icon(
//           Icons.shopping_cart,
//         ),
//         onPressed: () {
//           Navigator.of(context).pushNamed(CartScreen.routeName);
//         },
//       ),
//     );
//   }
// }
