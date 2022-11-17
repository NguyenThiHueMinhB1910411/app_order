// import 'package:flutter/material.dart';
// import 'package:order_food/constants.dart';
// import 'package:order_food/screens/home/home_screen.dart';
// import 'package:order_food/screens/sign_in/sign_in_screen.dart';
// import 'package:order_food/screens/sign_up/sign_up.dart';
// import 'package:order_food/screens/home/cart/cart_screen.dart';
// import 'package:flutter/foundation.dart';
// import 'package:provider/provider.dart';
// import '/screens/splash_screen.dart';

// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:flutter/material.dart';
// import 'package:order_food/constants.dart';
// import 'package:provider/provider.dart';
// import 'screens/Screens.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,

//       title: 'App order',
//       theme: ThemeData(
//         primaryColor: kPrimaryColor,
//         scaffoldBackgroundColor: Colors.white,
//         textTheme: TextTheme(
//           bodyText1: TextStyle(color: ksecondaryColor),
//           bodyText2: TextStyle(color: ksecondaryColor),
//         ),
//       ),
//       home: HomeScreen(),
//       // home: const SafeArea(
//       //   child: CartScreen(),
//       // ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:order_food/constants.dart';
// import 'package:order_food/screens/home/home_screen.dart';
// import 'package:order_food/screens/sign_in/sign_in_screen.dart';
// import 'package:order_food/screens/sign_up/sign_up.dart';
// import 'package:order_food/screens/home/cart/cart_screen.dart';
// import 'package:flutter/foundation.dart';
// import 'package:provider/provider.dart';
// import '/screens/splash_screen.dart';

import 'dart:async';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';
import 'package:order_food/constants.dart';
import 'package:provider/provider.dart';
import 'screens/Screens.dart';

Future<void> main() async {
  await dotenv.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (ctx) => AuthManager(),
          ),
        ],
        child: Consumer<AuthManager>(builder: (context, authManager, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'App order',
            theme: ThemeData(
              primaryColor: kPrimaryColor,
              scaffoldBackgroundColor: Colors.white,
              textTheme: TextTheme(
                bodyText1: TextStyle(color: ksecondaryColor),
                bodyText2: TextStyle(color: ksecondaryColor),
              ),
            ),
            home: HomeScreen(),

            // home: authManager.isAuth
            //     ? HomeScreen()
            //     : FutureBuilder(
            //         future: authManager.tryAutoLogin(),
            //         builder: (context, snapshot) {
            //           return snapshot.connectionState == ConnectionState.waiting
            //               ? const SplashScreen()
            //               : HomeScreen();
            //         },
            //       ),
          );
        }));
  }
}
