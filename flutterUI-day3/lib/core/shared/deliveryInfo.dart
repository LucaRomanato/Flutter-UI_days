import 'package:day3/core/shared/shared_variables.dart';
import 'package:flutter/material.dart';

class InformationCard extends StatelessWidget {
  final String text;

  InformationCard({this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 48),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: darkGreenColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            bottomLeft: Radius.circular(32),
          ),
        ),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 20,
            ),
            Icon(Icons.add, color: white, size: 24),
            SizedBox(
              width: 40,
            ),
            Text(
              text,
              style: TextStyle(color: white, fontSize: 22, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
