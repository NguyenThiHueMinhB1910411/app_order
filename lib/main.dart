import 'package:flutter/material.dart';
import 'package:order_food/constants.dart';
//import 'package:order_food/screens/home/home-screen.dart';
import 'package:order_food/screens/home/home_screen.dart';
import 'package:order_food/screens/sign_in/sign_in_screen.dart';
import 'package:order_food/screens/sign_up/sign_up.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'App order',
      theme: ThemeData(
        primaryColor: kPrimaryColor,

        scaffoldBackgroundColor: Colors.white,

        //   iconTheme: IconThemeData(color: Colors.black),
        // ),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: ksecondaryColor),
          bodyText2: TextStyle(color: ksecondaryColor),
        ),
      ),

      //home: HomeScreen(),
      //home: SignInScreen(),
      //bottomNavigationBar: BottomNavBar(),
      home: HomeScreen(),
    );
  }
}
