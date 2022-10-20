import 'package:flutter/material.dart';
import 'package:order_food/constants.dart';
import 'package:order_food/screens/home/home-screen.dart';
import 'package:order_food/screens/sign_in/sign_in_screen.dart';
import 'package:order_food/screens/sign_up/sign_up.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        // appBarTheme: AppBarTheme(
        //   color: Colors.white,
        //   elevation: 0,
        //   iconTheme: IconThemeData(color: Colors.black),
        // ),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: ksecondaryColor),
          bodyText2: TextStyle(color: ksecondaryColor),
        ),
      ),

      //home: HomeScreen(),
      home: SignInScreen(),
      //home: SignUpScreen(),
    );
  }
}
