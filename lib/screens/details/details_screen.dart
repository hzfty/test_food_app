import 'package:flutter/material.dart';
import 'package:food_app/components/order_button.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/screens/details/components/app_bar.dart';
import 'package:food_app/screens/details/components/title_price_rating.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: DetailsAppBar(context),
      body: Container(
        color: kPrimaryColor,
        child: Column(
          children: [
            Image.asset('assets/images/burger.png'),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    shopName(),
                    SizedBox(
                      height: 8,
                    ),
                    TitlePriceRating(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'A cheeseburger is a hamburger with a slice of melted cheese on top of the meat patty, added near the end of the cooking time. Cheeseburgers can include variations in structure, ingredients and composition. As with other hamburgers, a cheeseburger may include various condiments and other toppings such as lettuce, tomato, onion, pickles, bacon, avocado, mushrooms, mayonnaise, ketchup, and mustard.',
                      style: TextStyle(
                        height: 1.5,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ), //Free space 10% of total height
                    // SizedBox(
                    //   height: 20,
                    // ),
                    OrderButton(
                      size: size,
                      press: () {},
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row shopName() {
    return Row(
      children: [
        Icon(
          Icons.place,
          color: kTextLightColor,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          'MacDonalds',
          style: TextStyle(
            color: kTextLightColor,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
