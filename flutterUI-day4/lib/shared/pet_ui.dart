import 'package:day4ui/models/pet_model.dart';
import 'package:day4ui/shared/adopt_pet.dart';
import 'package:flutter/material.dart';

class PetUI extends StatelessWidget {
  final int idArray;

  PetUI({this.idArray});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Hero(
              tag: pets[idArray].id,
              child: Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                    image: DecorationImage(
                      image: AssetImage(pets[idArray].imageUrl),
                      fit: BoxFit.cover,
                    )),
              )),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => AdoptPetScreen(pet: pets[idArray]),
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.fromLTRB(12, 12, 40, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    pets[idArray].name,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    iconSize: 30,
                    color: Theme.of(context).primaryColor,
                    onPressed: () => print('favorite ${pets[idArray].name}'),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12, 0, 40, 12),
            child: Text(
              pets[idArray].description,
              style: TextStyle(
                  fontFamily: 'Montserrat', fontSize: 16, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
