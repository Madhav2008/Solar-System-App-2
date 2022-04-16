// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:solar_system_app/PlanetInfos/EarthInfo.dart';

class EarthCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => EarthInfo(),
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
                child: InkWell(
                  onTap: () => () {},
                  child: Container(
                    width: 290,
                    color: Color.fromARGB(255, 2, 44, 78),
                  ),
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
                        child: Image.asset('../assets/Earth.png'),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 45),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Earth',
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
                        '149.6 million km',
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
                        '6,371 km',
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
                        '9.81 m/s²',
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
