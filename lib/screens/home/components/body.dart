import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/components/search_box.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/screens/home/components/category_item.dart';
import 'package:food_app/screens/home/components/category_list.dart';
import 'package:food_app/screens/home/components/combo_list.dart';
import 'package:food_app/screens/home/components/discount_widget.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SearchBox(
          onChanged: (value) {},
        ),
        CategoryList(),
        ComboList(),
        DiscountWidget(),
      ],
    );
  }
}
