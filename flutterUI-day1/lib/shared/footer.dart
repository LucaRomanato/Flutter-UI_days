import 'package:day1/shared/shared_variables.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final String image;

  Footer({this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
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
            stops: [0.1, 0.6],
            colors: [
              gradientblack(0.6),
              gradientblack(0.1),
            ],
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              'Best Drinks',
              style: TextStyle(
                color: white,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
