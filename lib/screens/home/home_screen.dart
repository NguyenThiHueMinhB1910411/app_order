import 'package:flutter/material.dart';
import 'package:order_food/constants.dart';
import 'package:order_food/models/Category.dart';
import 'package:order_food/models/Product.dart';
import 'package:order_food/screens/home/components/app_bar.dart';
import 'package:order_food/screens/home/components/bottom_nav_bar.dart';
import 'package:order_food/screens/home/components/category.dart';
import 'package:order_food/screens/home/components/category_list.dart';
import 'package:order_food/screens/home/components/column_category_list.dart';
import 'package:order_food/screens/home/details/components/app_bar.dart';
import 'package:order_food/screens/home/details/details-screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const outlineInputBorder = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide.none,
    );

    return Scaffold(
      appBar: homeAppBar(context),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Form(
                      child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Search item...",
                        filled: true,
                        fillColor: Colors.white,
                        border: outlineInputBorder,
                        focusedBorder: outlineInputBorder,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Icon(Icons.search),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 12),
                          child: SizedBox(
                            height: 48,
                            width: 48,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                              child: Icon(
                                Icons.filter_alt,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )),
                  )),
                ),

                // ////////////
                Banner(),
                /////////
                const Categories(),
                const SizedBox(
                  height: 10,
                ),
                TraSua(),
                const SizedBox(
                  height: 10,
                ),
                Tra(),
                const SizedBox(
                  height: 10,
                ),
                DaXay(),
                const SizedBox(
                  height: 10,
                ),
                Latte(),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  Container Banner() {
    return Container(
      child: Container(
          // padding: EdgeInsets.only(bottom: 20),
          margin: EdgeInsets.only(bottom: 30),
          //width: 700,
          //height: 300,
          child: Image.asset("assets/images/banner_milk_tea_1.jpg")),
    );
  }
}

class TraSua extends StatelessWidget {
  const TraSua({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Trà sữa",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
                show_product.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: ProductCard(
                        image: show_product[index].image,
                        title: show_product[index].title,
                        price: show_product[index].price,
                        bgColor: show_product[index].bgColor,
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DetailsScreen();
                              },
                            ),
                          );
                        },
                      ),
                    )),
          ),
        )
      ],
    );
  }
}

class Tra extends StatelessWidget {
  const Tra({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Trà",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
                show_product.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: ProductCard(
                        image: show_product[index].image,
                        title: show_product[index].title,
                        price: show_product[index].price,
                        bgColor: show_product[index].bgColor,
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DetailsScreen();
                              },
                            ),
                          );
                        },
                      ),
                    )),
          ),
        )
      ],
    );
  }
}

class DaXay extends StatelessWidget {
  const DaXay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Đá xay",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
                show_product.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: ProductCard(
                        image: show_product[index].image,
                        title: show_product[index].title,
                        price: show_product[index].price,
                        bgColor: show_product[index].bgColor,
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DetailsScreen();
                              },
                            ),
                          );
                        },
                      ),
                    )),
          ),
        )
      ],
    );
  }
}

class Latte extends StatelessWidget {
  const Latte({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Latte",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
                show_product.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: ProductCard(
                        image: show_product[index].image,
                        title: show_product[index].title,
                        price: show_product[index].price,
                        bgColor: show_product[index].bgColor,
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DetailsScreen();
                              },
                            ),
                          );
                        },
                      ),
                    )),
          ),
        )
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.bgColor,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title;
  final Color bgColor;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 154,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                //color: bgColor,
                borderRadius: const BorderRadius.all(Radius.circular(50)),
              ),
              child: Image.asset(image),
              //height: 132,
              height: 180,
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  price.toString(),
                  style: Theme.of(context).textTheme.subtitle2,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.pressSeeAll,
  }) : super(key: key);

  final String title;
  final VoidCallback pressSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                )),
        TextButton(
          // onPressed: pressSeeAll,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ShowCategoryList();
                },
              ),
            );
          },
          child: Text(
            "See All",
            style: TextStyle(color: Colors.black54),
          ),
        )
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.image,
    required this.title,
    //required this.bgColor,
    required this.press,
    required String type,
  }) : super(key: key);

  final String image, title;
  //final Color bgColor;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: press,
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
          child: Column(
            children: [
              Image.asset(
                image,
                width: 50,
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ));
  }
}

const outlineInputBorder = const OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(10)),
  borderSide: BorderSide.none,
);
