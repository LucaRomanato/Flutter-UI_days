import 'package:day1/shared/shared_variables.dart';
import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  final String image;

  PromoCard({this.image});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.62 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [0.1,0.9],
              colors: [
                gradientblack(0.8),
                gradientblack(0.1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
