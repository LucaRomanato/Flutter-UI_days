import 'package:day3/core/shared/shared_variables.dart';
import 'package:flutter/material.dart';

class FooterCard extends StatelessWidget {
  final String quantity;
  final String misureUnit;
  final String element;

  FooterCard({this.element, this.misureUnit, this.quantity});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 50,
      height: 100,
      decoration: BoxDecoration(
          color: darkGreenColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32), topRight: Radius.circular(32))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                quantity,
                style: TextStyle(
                    color: white, fontWeight: FontWeight.bold, fontSize: 42),
              ),
              SizedBox(width: 8),
              Text(
                misureUnit,
                style: TextStyle(color: Colors.white54),
              ),
            ],
          ),
          Text(
            element,
            style: TextStyle(color: Colors.white54),
          ),
        ],
      ),
    );
  }
}
