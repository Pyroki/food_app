import 'package:flutter/material.dart';
import 'package:food_app/widgets/widgets_support.dart';

class FoodCard extends StatelessWidget {
  final String text1;
  final String text2;
  final String price;
  final String imagepath;
  const FoodCard(
      {super.key,
      required this.imagepath,
      required this.text1,
      required this.text2,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(7),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: EdgeInsets.all(8),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset(
              imagepath,
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
            Text(
              text1,
              style: AppWidget.semiboldttextfieldstyle(),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              text2,
              style: AppWidget.lighttextfieldstyle(),
            ),
            Text(
              price,
              style: AppWidget.semiboldttextfieldstyle(),
            ),
          ]),
        ),
      ),
    );
  }
}
