// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:solar_system_app/PlanetInfos/MercuryInfo.dart';

class MercuryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => MercuryInfo(),
        ),
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 45),
        height: 450,
        child: Stack(
          children: <Widget>[
            Center(
              child: Card(
                margin: EdgeInsets.only(top: 60),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                elevation: 7,
                color: Color.fromARGB(255, 2, 44, 78),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  width: 290,
                  color: Color.fromARGB(255, 2, 44, 78),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 55),
                  child: Center(
                    child: Container(
                      height: 170,
                      width: 180,
                      child: ClipRRect(
                        child: Image.asset('../assets/Mercury.png'),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 45),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Mercury',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Planet',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(height: 25),
                      Text(
                        'Distance from sun',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '57.51 million km',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Radius',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '2,339.7 km',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Gravity',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '3.7 m/s²',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
