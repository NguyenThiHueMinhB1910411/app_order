import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:order_food/constants.dart';
import 'package:order_food/screens/home/components/app_bar.dart';
import 'package:order_food/screens/home/components/body.dart';

import 'components/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: homeAppBar(context),
      bottomNavigationBar: BottomNavBar(),
      body: BodyScreen(),
    );
  }
}
