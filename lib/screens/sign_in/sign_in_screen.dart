import 'package:flutter/material.dart';
import 'package:order_food/screens/home/components/app_bar.dart';
import 'package:order_food/screens/sign_in/app_bar_sign_in.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/theme_sign_in.jpg'),
                ),
              ),
            ),
            Text(
              "Sign in",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0),
              child: Container(
                margin: EdgeInsets.only(right: 20, top: 20),
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    // TextFormField(
                    //   decoration: InputDecoration(
                    //     labelText: "Email",
                    //     hintText: "Enter your email",
                    //   ),
                    //   textAlign: TextAlign.center,
                    // ),
                    Container(
                        margin: EdgeInsets.only(left: 20, right: 20, top: 40),
                        padding: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey[100],
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(4, 1),
                                blurRadius: 50,
                                color: Color.fromARGB(255, 250, 246, 246),
                              )
                            ]),
                        child: TextField(
                          cursorColor: Colors.green,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              color: Colors.green[500],
                            ),
                            hintText: "Enter Email",
                          ),
                        )),

                    Container(
                        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                        padding: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey[100],
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(4, 1),
                                blurRadius: 50,
                                color: Color.fromARGB(255, 250, 246, 246),
                              )
                            ]),
                        child: TextField(
                          cursorColor: Colors.green,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.key,
                              color: Colors.green[500],
                            ),
                            hintText: "Enter Key",
                          ),
                        )),
                    // TextField(
                    //   cursorColor: Colors.green,
                    //   decoration: InputDecoration(
                    //     icon: Icon(
                    //       Icons.email,
                    //       color: Colors.grey,
                    //     ),
                    //     hintText: "Enter Email",
                    //     enabledBorder: InputBorder.none,
                    //   ),
                    // )
                  ],
                ),
              ),
            )
          ],
        ),
      ),

      // appBar: AppBar(
      //   title: Text("Sign in"),

      // ),

      //homeAppBarSignIn(context),
    );
  }
}
