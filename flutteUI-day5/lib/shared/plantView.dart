import 'package:day5ui/models/plant_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlantView extends StatefulWidget {
  final Plant plant;

  PlantView({this.plant});

  @override
  _PlantViewState createState() => _PlantViewState();
}

class _PlantViewState extends State<PlantView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 30, right: 30, top: 60),
                    height: 520,
                    color: Color(0xFF32A060),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GestureDetector(
                                onTap: () => Navigator.pop(context),
                                child: Icon(Icons.arrow_back,
                                    size: 30, color: Colors.white)),
                            Icon(Icons.shopping_cart,
                                size: 30, color: Colors.white)
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(widget.plant.category.toUpperCase(),
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                        SizedBox(height: 5),
                        Text(widget.plant.name,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 40,
                        ),
                        Text('From'.toUpperCase(),
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                        SizedBox(height: 5),
                        Text('\$${widget.plant.price}',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 40,
                        ),
                        Text('size'.toUpperCase(),
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                        SizedBox(height: 5),
                        Text(widget.plant.size,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 40,
                        ),
                        RawMaterialButton(
                          padding: EdgeInsets.all(20),
                          shape: CircleBorder(),
                          elevation: 2,
                          fillColor: Colors.black,
                          child: Icon(
                            Icons.add_shopping_cart,
                            color: Colors.white,
                            size: 35,
                          ),
                          onPressed: () => print('add to cart'),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 20,
                    bottom: 30,
                    child: Hero(
                      tag: widget.plant.imageUrl,
                      child: Image(
                        height: 280,
                        width: 280,
                        image: AssetImage(widget.plant.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 400,
                transform: Matrix4.translationValues(0, -20, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'All to know..',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            widget.plant.description,
                            style:
                                TextStyle(color: Colors.black87, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Details',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Plant height: 35-45cm',
                            style: TextStyle(
                                fontSize: 16, color: Colors.black87 ),
                          ),
                          Text(
                            'Nursery pot width width: 12cm',
                            style: TextStyle(
                                fontSize: 16, color: Colors.black87 ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
