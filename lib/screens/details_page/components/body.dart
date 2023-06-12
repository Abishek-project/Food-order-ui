import 'package:flutter/material.dart';
import 'package:food_order/screens/details_page/components/item_image.dart';
import 'package:food_order/screens/details_page/components/order_button.dart';
import 'package:food_order/screens/details_page/components/title_price_rating.dart';

import '../../../constanst.dart';

class Detailsbody extends StatelessWidget {
  const Detailsbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        ItemImage(
          imgSrc: "images/burger.png",
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: ItemInfo(),
        ),
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: <Widget>[
          shopeName(name: "MacDonalds"),
          const TitlePriceRating(
            name: "Cheese Burger",
            numOfReviews: 24,
            rating: 4,
            price: 15,
          ),
          const Text(
            "A traditional grilled sandwich that consists of ground meat made into a patty, cooked, topped with a slice of cheese, and placed between two halves of a bun to create this favorite international food. Typically made with ground beef, the meat is produced by grinding and blending together various cuts of beef including meat from the shoulder, brisket, and loin.",
            style: TextStyle(fontSize: 17),
          ),
          SizedBox(height: size.height * 0.1),
          // Free space  10% of total height
          OrderButton(
            size: size,
            press: () {},
          )
        ],
      ),
    );
  }

  Row shopeName({String? name}) {
    return Row(
      children: <Widget>[
        const Icon(
          Icons.location_on,
          color: ksecondaryColor,
        ),
        const SizedBox(width: 10),
        Text(name!),
      ],
    );
  }
}
