import 'package:flutter/material.dart';
import 'package:food_order/screens/home/components/itemcard.dart';

import '../../details_page/details-screen.dart';

class Itemlist extends StatelessWidget {
  const Itemlist({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          ItemCard(
            svgSrc: 'icons/burger_beer.svg',
            title: 'Burger,Beer',
            shopName: "MacDonald's",
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
          ItemCard(
            svgSrc: 'icons/chinese_noodles.svg',
            title: 'Burger,Beer',
            shopName: "MacDonald's",
            press: () {},
          ),
          ItemCard(
            svgSrc: 'icons/burger_beer.svg',
            title: 'Burger,Beer',
            shopName: "MacDonald's",
            press: () {},
          ),
          ItemCard(
            svgSrc: 'icons/chinese_noodles.svg',
            title: 'Burger,Beer',
            shopName: "MacDonald's",
            press: () {},
          )
        ],
      ),
    );
  }
}
