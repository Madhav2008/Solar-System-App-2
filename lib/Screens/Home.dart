import 'package:flutter/material.dart';
import 'package:solar_system_app/PlanetCards/EarthCard.dart';
import 'package:solar_system_app/PlanetCards/MarsCard.dart';
import 'package:solar_system_app/PlanetCards/MercuryCard.dart';
import 'package:solar_system_app/PlanetCards/VenusCard.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('../assets/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 50, horizontal: 25),
                child: Text(
                  'Solar System',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Container(
              height: 485,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  MercuryCard(),
                  VenusCard(),
                  EarthCard(),
                  MarsCard(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
