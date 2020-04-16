import 'package:day4ui/models/pet_model.dart';
import 'package:flutter/material.dart';

class AdoptPetScreen extends StatefulWidget {
  final Pet pet;

  AdoptPetScreen({this.pet});

  @override
  _AdoptPetScreenState createState() => _AdoptPetScreenState();
}

class _AdoptPetScreenState extends State<AdoptPetScreen> {
  Widget _buildInfoCard(String label, String info) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 100,
      decoration: BoxDecoration(
          color: Color(0xFFF8F2F7), borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            label,
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).primaryColor),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            info,
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Hero(
                  tag: widget.pet.id,
                  child: Container(
                    width: double.infinity,
                    height: 350,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.pet.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40, left: 10),
                  child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back),
                      color: Colors.white),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    widget.pet.name,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    iconSize: 30,
                    color: Theme.of(context).primaryColor,
                    onPressed: () => print('favorite ${widget.pet.name}'),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                widget.pet.description,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SizedBox(
                    width: 30,
                  ),
                  _buildInfoCard('Age', widget.pet.age.toString()),
                  _buildInfoCard('Sex', widget.pet.sex),
                  _buildInfoCard('Color', widget.pet.color),
                  _buildInfoCard('ID', widget.pet.id.toString()),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 30),
              width: double.infinity,
              height: 90,
              decoration: BoxDecoration(
                color: Color(0xFFFFF2D0),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                leading: CircleAvatar(
                  child: ClipOval(
                    child: Image(
                        height: 40,
                        width: 40,
                        image: AssetImage(owner.imageUrl),
                        fit: BoxFit.cover),
                  ),
                ),
                title: Text(
                  owner.name,
                  style: TextStyle(
                      fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Owner',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontFamily: 'Montserrat'),
                ),
                trailing: Text(
                  '1.68km',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontFamily: 'Montserrat'),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: Text(
                  owner.bio,
                  style: TextStyle(
                      fontFamily: 'Montserrat', fontSize: 15, height: 1.5),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                )),
            Padding(
                padding: EdgeInsets.all(40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                      width: 60,
                      child: IconButton(
                        onPressed: () => print('Share'),
                        icon: Icon(Icons.share),
                      ),
                    ),
                    FlatButton.icon(
                      padding: EdgeInsets.all(20),
                      color: Theme.of(context).primaryColor,
                      onPressed: () => print('Adopt'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      icon: Icon(
                        Icons.pets,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Adoption'.toUpperCase(),
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.white,
                            letterSpacing: 1.5),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
