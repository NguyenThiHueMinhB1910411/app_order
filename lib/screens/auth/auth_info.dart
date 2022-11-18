// import 'package:flutter/material.dart';
// import 'package:order_food/screens/Screens.dart';
// import 'package:order_food/screens/auth/auth_screen.dart';
// import 'package:order_food/screens/home/cart/cart_screen1.dart';
// import 'package:order_food/screens/home/components/app_bar.dart';
// import 'package:order_food/screens/home/components/bottom_nav_bar.dart';
// import 'package:order_food/screens/home/details/components/app_bar.dart';
// import 'package:order_food/screens/home/home_screen.dart';
// import 'package:order_food/screens/sign_up/sign_up.dart';

// class AuthInfo extends StatefulWidget {
//   const AuthInfo({super.key});

//   @override
//   State<AuthInfo> createState() => _AuthInfoState();
// }

// class _AuthInfoState extends State<AuthInfo> {
//   @override
//   Widget build(BuildContext context) {
//     ChangeNotifierProvider(create: (context) => AuthManager());
//     return Consumer<AuthManager>(
//       builder: (context, authManager, child) {
//         return MaterialApp(
//           debugShowCheckedModeBanner: false,
//           home: authManager.isAuth
//               ? _buildLogout(authManager.authToken!.email)
//               : FutureBuilder(
//                   future: authManager.tryAutoLogin(),
//                   builder: (context, snapshot) {
//                     return snapshot.connectionState == ConnectionState.waiting
//                         ? const SplashScreen()
//                         : const AuthScreen();
//                   },
//                 ),
//         );
//       },
//     );
//   }

//   Widget _buildLogout(auth) {
//     return Consumer<AuthManager>(
//       builder: (context, value, child) {
//         return Scaffold(
//           appBar: detailsAppBar(context),
//           resizeToAvoidBottomInset: false,
//           body: Container(
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.height,
//             child: Column(
//               children: [
//                 Container(
//                   height: 300,
//                   width: 150,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage('assets/images/avatar_cat.jpg'),
//                     ),
//                   ),
//                 ),
//                 Text(
//                   auth,
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 0.0),
//                   child: Container(
//                     margin: EdgeInsets.only(right: 20, top: 20, left: 20),
//                     alignment: Alignment.bottomCenter,
//                     child: Column(
//                       children: [
//                         Container(
//                             margin:
//                                 EdgeInsets.only(left: 20, right: 20, top: 25),
//                             padding: EdgeInsets.only(left: 20, right: 20),
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(50),
//                                 color: Colors.grey[100],
//                                 boxShadow: [
//                                   BoxShadow(
//                                     offset: Offset(4, 1),
//                                     blurRadius: 50,
//                                     color: Color.fromARGB(255, 250, 246, 246),
//                                   )
//                                 ]),
//                             child: TextField(
//                               cursorColor: Colors.green,
//                               decoration: InputDecoration(
//                                 icon: Icon(
//                                   Icons.phone_android_outlined,
//                                   color: Colors.green[500],
//                                 ),
//                                 hintText: "Enter your email",
//                               ),
//                             )),
//                         Container(
//                             margin:
//                                 EdgeInsets.only(left: 20, right: 20, top: 25),
//                             padding: EdgeInsets.only(left: 20, right: 20),
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(50),
//                                 color: Colors.grey[100],
//                                 boxShadow: [
//                                   BoxShadow(
//                                     offset: Offset(4, 1),
//                                     blurRadius: 50,
//                                     color: Color.fromARGB(255, 250, 246, 246),
//                                   )
//                                 ]),
//                             child: TextField(
//                               cursorColor: Colors.green,
//                               decoration: InputDecoration(
//                                 icon: Icon(
//                                   Icons.key,
//                                   color: Colors.green[500],
//                                 ),
//                                 hintText: "Enter your password",
//                               ),
//                             )),
//                         Container(
//                           margin: EdgeInsets.only(top: 20, right: 20),
//                           alignment: Alignment.centerRight,
//                           child: GestureDetector(
//                             child: Text("Forget Password?"),
//                             onTap: () => {},
//                           ),
//                         ),
//                         GestureDetector(
//                           onTap: () => {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) {
//                                   return AuthScreen();
//                                 },
//                               ),
//                             ),
//                           },
//                           child: Container(
//                             margin:
//                                 EdgeInsets.only(left: 20, right: 20, top: 30),
//                             alignment: Alignment.center,
//                             height: 50,
//                             decoration: BoxDecoration(
//                               color: Colors.green,
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.all(10.0),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: <Widget>[
//                                   IconButton(
//                                     onPressed: () {
//                                       Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (context) {
//                                             return AuthScreen();
//                                           },
//                                         ),
//                                       );
//                                     },
//                                     icon: const Icon(Icons.logout),
//                                     color: Colors.white,
//                                   ),
//                                   SizedBox(width: 10),
//                                   Text(
//                                     "Logout",
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 20,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                         Container(
//                           margin: EdgeInsets.only(top: 20, right: 20),
//                           alignment: Alignment.centerRight,
//                         ),
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           bottomNavigationBar: BottomNavBar(),
//         );
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:order_food/screens/Screens.dart';
import 'package:order_food/screens/auth/auth_screen.dart';
import 'package:order_food/screens/home/components/app_bar.dart';
import 'package:order_food/screens/home/components/bottom_nav_bar.dart';
import 'package:order_food/screens/home/details/components/app_bar.dart';
import 'package:order_food/screens/home/home_screen.dart';
import 'package:order_food/screens/orders/order_manager.dart';
import 'package:order_food/screens/orders/orders_screen.dart';

class AuthInfo extends StatefulWidget {
  const AuthInfo({super.key});

  @override
  State<AuthInfo> createState() => _AuthInfoState();
}

class _AuthInfoState extends State<AuthInfo> {
  @override
  Widget build(BuildContext context) {
    ChangeNotifierProvider(create: (context) => AuthManager());
    return Consumer<AuthManager>(
      builder: (context, authManager, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: authManager.isAuth
              ? _buildLogout(authManager.authToken!.email)
              : FutureBuilder(
                  future: authManager.tryAutoLogin(),
                  builder: (context, snapshot) {
                    return snapshot.connectionState == ConnectionState.waiting
                        ? const SplashScreen()
                        : const AuthScreen();
                  },
                ),
        );
      },
    );
  }

  Widget _buildLogout(auth) {
    return Consumer<AuthManager>(
      builder: (context, value, child) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: detailsAppBar(context),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: 
            Column(
              children: [
                Container(
                  height: 250,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/avatar_cat.jpg'),
                    ),
                  ),
                ),
                Text(
                  auth,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.0),
                  child: Container(
                    margin: EdgeInsets.only(right: 20, top: 20, left: 20),
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return AuthScreen();
                                },
                              ),
                            ),
                          },
                          child:
                           Container(
                            margin:
                                EdgeInsets.only(left: 20, right: 20, top: 0),
                            alignment: Alignment.center,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  IconButton(
                                    onPressed: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //     builder: (context) {
                                      //       return AuthScreen();
                                      //     },
                                      //   ),
                                      // );
                                    },
                                    icon: const Icon(Icons.settings),
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Settings",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                          alignment: Alignment.center,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.help),
                                  color: Colors.white,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Help",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 8),

                        Container(
                          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                          alignment: Alignment.center,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return OrdersScreen();
                                        },
                                      ),
                                    );
                                  },
                                  icon: const Icon(Icons.badge),
                                  color: Colors.white,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "My orders",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                          alignment: Alignment.center,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return AuthScreen();
                                        },
                                      ),
                                    );
                                  },
                                  icon: const Icon(Icons.logout),
                                  color: Colors.white,
                                ),
                                SizedBox(width: 18),
                                Text(
                                  "Log out",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: BottomNavBar(),
        );
      },
    );
  }
}
