import 'package:flutter/material.dart';
import 'package:food_app/components/custom_reting_stars.dart';
import 'package:food_app/constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.share,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        color: kPrimaryColor,
        child: Column(
          children: [
            Image.asset('assets/images/burger.png'),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Row(
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
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Cheese Burger',
                    style: TextStyle(color: kTextColor, fontSize: 24),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      AnimatedRatingStars(
                          initialRating: 3.5,
                          minRating: 0.0,
                          maxRating: 5.0,
                          starSize: 15,
                          onChanged: (value) {},
                          customFilledIcon: Icons.star,
                          customHalfFilledIcon: Icons.star,
                          customEmptyIcon: Icons.star),
                      SizedBox(width: 8),
                      Text('24 review',
                          style:
                              TextStyle(fontSize: 12, color: kTextLightColor))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
