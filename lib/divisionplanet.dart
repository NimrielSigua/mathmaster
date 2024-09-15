import 'package:flutter/material.dart';
import 'package:mathmaster/divisionTutorial.dart';
import 'package:mathmaster/home.dart';

void main() {
  runApp(const PlanetDivision());
}

class PlanetDivision extends StatefulWidget {
  const PlanetDivision({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<PlanetDivision> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: 500,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/planets_bg.png'), // Check this path
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 370.0, top: 10), // Adjust the margin as needed
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return main1();
                                }));
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Text(
                            'Click the planet to Enter',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.purple,
                                fontSize: 20),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return PlanetDivisionTutorial();
                                }));
                            },
                            child: Image.asset(
                              'assets/images/division-planet.png',
                              height: 200.0,
                              width: 200.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
