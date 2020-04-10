import 'package:day2/shared/shared_variables.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final double width;
  final double height;

  Background({this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      stops: [0.3, 2],
                      colors: [
                        gradientblack(0.8),
                        gradientblack(0.1),
                      ],
                    ),
                  ),
                ),
              );
  }
}