import 'package:flutter/material.dart';
import 'package:food_order/constanst.dart';

class CategoryItem extends StatelessWidget {
  final title;
  final bool isActive;
  VoidCallback? press;

  CategoryItem({
    Key? key,
    this.title,
    this.isActive = false,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: InkWell(
        onTap: press,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(title,
                style: isActive
                    ? const TextStyle(
                        fontWeight: FontWeight.bold, color: kTextColor)
                    : const TextStyle(fontSize: 12)),
            if (isActive)
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                height: 4,
                width: 22,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              )
          ],
        ),
      ),
    );
  }
}
