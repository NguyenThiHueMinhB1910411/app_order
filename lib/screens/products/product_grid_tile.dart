// import 'package:flutter/material.dart';
// import 'package:order_food/screens/home/details/details-screen.dart';
// import 'package:provider/provider.dart';
// import '../../../models/product.dart';

// import 'package:order_food/screens/home/details/details-screen.dart';

// class ProductGridTile extends StatelessWidget {
//   const ProductGridTile(
//     this.product, {
//     super.key,
//   });

//   final Product product;

//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(10),
//       child: GridTile(
//         footer: buildGridFooterBar(context),
//         child: GestureDetector(
//           onTap: () {
//             Navigator.of(context).pushNamed(
//               DetailsScreen().routeName,
//               arguments: product.id,
//             );
//           },

//           child: Image.network(
//             product.imageUrl,
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildGridFooterBar(BuildContext context) {
//     return GridTileBar(
//       backgroundColor: Colors.black87,

//       leading: ValueListenableBuilder<bool>(
//         valueListenable: product.isFavoriteListenable,
//         builder: (ctx, isFavorite, child) {
//           return IconButton(
//             icon: Icon(
//               isFavorite ? Icons.favorite : Icons.favorite_border,
//             ),
//             color: Theme.of(context).colorScheme.secondary,
//             onPressed: () {
//               ctx.read<ProductsManager>().toggleFavoriteStatus(product);
//             },
//           );
//         },
//       ),
//       title: Text(
//         product.title,
//         textAlign: TextAlign.center,
//       ),
//       trailing: IconButton(
//         icon: const Icon(
//           Icons.shopping_cart,
//         ),
//         onPressed: () {
//           final cart = context.read<CartManager>();
//           cart.addItem(product);
//           ScaffoldMessenger.of(context)
//             ..hideCurrentSnackBar()
//             ..showSnackBar(
//               SnackBar(
//                 content: const Text(
//                   'Item added to cart',
//                 ),
//                 duration: const Duration(seconds: 2),
//                 action: SnackBarAction(
//                   label: 'UNO',
//                   onPressed: () {
//                     cart.removeSingleItem(product.id!);
//                   },
//                 ),
//               ),
//             );
//         },
//         color: Theme.of(context).colorScheme.secondary,
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../../../models/product.dart';
import 'package:order_food/screens/home/details/details-screen.dart';

class ProductGridTile extends StatelessWidget {
  const ProductGridTile(
    this.product, {
    super.key,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: buildGridFooterBar(context),
        child: GestureDetector(
          //lab1
          // onTap: () {
          //   print('Go to product detail screen');
          // },

          //lab1
          // onTap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => ProductDetailScreen(product),
          //     ),
          //   );
          // },
          //lab2 slide 19
          onTap: () {
            Navigator.of(context).pushNamed(
              DetailsScreen.routeName,
              arguments: product.id,
            );
          },

          child: Image.asset(
            'assets/images/avatar_cat.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget buildGridFooterBar(BuildContext context) {
    return GridTileBar(
      backgroundColor: Colors.black87,
      // leading: ValueListenableBuilder<bool>(
      //   valueListenable: product.isFavoriteListenable,
      //   builder: (ctx, isFavorite, child) {
      //     return IconButton(
      //       icon: Icon(
      //         isFavorite ? Icons.favorite : Icons.favorite_border,
      //       ),
      //       color: Theme.of(context).colorScheme.secondary,
      //       onPressed: () {
      //       },
      //     );
      //   },
      //   // icon: Icon(
      //   //   product.isFavorite ? Icons.favorite : Icons.favorite_border,
      //   ),
      // color: Theme.of(context).colorScheme.secondary,
      // onPressed: () {
      //   print('Toggle a favorite product');

      title: Text(
        product.title,
        textAlign: TextAlign.center,
      ),
      trailing: IconButton(
        icon: const Icon(
          Icons.shopping_cart,
        ),
        onPressed: () {
          print('Add item to cart');
        },
        color: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
