import 'package:flutter/material.dart';

class TitlePriceRating extends StatelessWidget {
  final int price, numberOfReview;
  final double rating;
  final String name;
  // final ChangeNotifier onRatingChanged;
  const TitlePriceRating({
    Key? key,
    required this.price,
    required this.numberOfReview,
    required this.rating,
    required this.name,
    // required this.onRatingChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Wrap(
                        children: List.generate(5, (index) {
                      return Icon(
                        Icons.star,
                        
                        color: Colors.yellow[700],
                        
                      );
                      
                    })),
                    
                    SizedBox(width: 10),
                    Text("$numberOfReview reviews"),
                  ],
                ),
              ],
            ),
          ),
          Container(
            // clipper: PricerCliper(),

            child: Container(
              alignment: Alignment.topCenter,
              // padding: EdgeInsets.symmetric(vertical: 15),
              // height: 66,
              // width: 65,
              // color: Colors.blue,

              child: Text(
                "95.000 VND",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
