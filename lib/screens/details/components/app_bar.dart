import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';

AppBar DetailsAppBar(BuildContext context) {
  return AppBar(
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
  );
}
