// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:order_food/screens/products/edit_product_screen.dart';
// import 'package:order_food/models/Product.dart';
// import 'package:order_food/screens/Screens.dart';

// class UserProductListTile extends StatelessWidget {
//   final Product product;

//   const UserProductListTile(
//     this.product, {
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(product.title),
//       leading: CircleAvatar(
//         backgroundImage: NetworkImage(product.image,
//       ),
//       trailing: SizedBox(
//         width: 100,
//         child: Row(
//           children: <Widget>[
//             buildEditButton(context),
//             buildDeleteButton(context),
//           ],
//         ),
//       ),
//     );
//   }
//   Widget buildDeleteButton(BuildContext context) {
//     return IconButton(
//       icon: const Icon(Icons.delete),
//       onPressed: () {
//         context.read<ProductsManager>().deleteProduct(product.id!);
//         ScaffoldMessenger.of(context)
//           ..hideCurrentSnackBar()
//           ..showSnackBar(
//             const SnackBar(
//               content: Text(
//                 'Product deleted',
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           );
//       },
//       color: Theme.of(context).errorColor,
//     );
//   }

//   Widget buildEditButton(BuildContext context) {
//     return IconButton(
//       icon: const Icon(Icons.edit),
//       onPressed: () {
//         Navigator.of(context).pushNamed(
//           EditProductScreen.routeName,
//           arguments: product.id,
//         );
//       },
//       color: Theme.of(context).primaryColor,
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:order_food/screens/Screens.dart';
import 'package:order_food/screens/products/edit_product_screen.dart';
import 'package:order_food/screens/products/products_manager.dart';
import '../../../models/Product.dart';

class UserProductListTile extends StatelessWidget {
  final Product product;

  const UserProductListTile(
    this.product, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.title),
      leading: CircleAvatar(
        backgroundImage: AssetImage(product.image),
      ),
      trailing: SizedBox(
        width: 100,
        child: Row(
          children: <Widget>[
            buildEditButton(context),
            buildDeleteButton(context),
          ],
        ),
      ),
    );
  }

  Widget buildDeleteButton(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.delete),
      onPressed: () {
        context.read<ProductsManager>().deleteProduct(product.id!);
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            const SnackBar(
              content: Text(
                'Product deleted',
                textAlign: TextAlign.center,
              ),
            ),
          );
      },
      color: Theme.of(context).errorColor,
    );
  }

  Widget buildEditButton(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.edit,
        color: Colors.blue,
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              // return UserProductsScreen();
              return EditProductScreen(product);
            },
          ),
        );
      },
      color: Theme.of(context).primaryColor,
    );
  }
}
