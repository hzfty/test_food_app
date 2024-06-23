import 'package:flutter/material.dart';
import 'package:food_app/screens/home/components/combo_item.dart';

class Combo {
  final String image;
  final String name;
  final String shopName;
  Combo({
    required this.image,
    required this.name,
    required this.shopName,
  });
}

List<Combo> comboList = [
  Combo(
      image: 'assets/icons/burger_beer.svg',
      name: 'Burger beer',
      shopName: "MacDonald's"),
  Combo(
      image: 'assets/icons/chinese_noodles.svg',
      name: 'Chinese & Noodles',
      shopName: "Wendys"),
  Combo(
      image: 'assets/icons/burger_beer.svg',
      name: 'Byrger beer',
      shopName: "MacDonald's")
];

class ComboList extends StatelessWidget {
  const ComboList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 250,
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: comboList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return ComboItem(
              combo: comboList[index],
            );
          },
        ));
  }
}
