import 'package:flutter/material.dart';
import 'package:food_app/components/custom_reting_stars.dart';
import 'package:food_app/constants.dart';

class TitlePriceRating extends StatelessWidget {
  const TitlePriceRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Cheese Burger',
                style: TextStyle(color: kTextColor, fontSize: 24),
              ),
              SizedBox(
                height: 6,
              ),
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
                  Text(
                    '24 review',
                    style: TextStyle(fontSize: 12, color: kTextLightColor),
                  ),
                ],
              )
            ],
          ),
        ),
        priceTag(),
      ],
    );
  }

  ClipPath priceTag() {
    return ClipPath(
      clipper: PricerCliper(),
      child: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.symmetric(vertical: 15),
        height: 66,
        width: 65,
        color: kPrimaryColor,
        child: Text(
          '\$15',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 19),
        ),
      ),
    );
  }
}

class PricerCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double ignoreHeight = 20;
    path.lineTo(0, size.height - ignoreHeight);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - ignoreHeight);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
