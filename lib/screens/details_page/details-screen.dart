import 'package:flutter/material.dart';
import 'package:food_order/constanst.dart';
import 'package:food_order/screens/details_page/components/app_bar.dart';
import 'package:food_order/screens/details_page/components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: Detailsbody(),
    );
  }
}
