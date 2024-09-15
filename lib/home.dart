import 'package:flutter/material.dart';
import 'package:mathmaster/additiongameeasy.dart';
import 'package:mathmaster/additiongamehard.dart';
import 'package:mathmaster/additiongamenormal.dart';
import 'package:mathmaster/additionplanet.dart';
import 'package:mathmaster/divisiongameeasy.dart';
import 'package:mathmaster/divisiongamehard.dart';
import 'package:mathmaster/divisiongamenormal.dart';
import 'package:mathmaster/divisionplanet.dart';
import 'package:mathmaster/function_station.dart';
import 'package:mathmaster/multiplicationgameeasy.dart';
import 'package:mathmaster/multiplicationgamehard.dart';
import 'package:mathmaster/multiplicationgamenormal.dart';
import 'package:mathmaster/multiplicationplanet.dart';
import 'package:mathmaster/subtractiongameeasy.dart';
import 'package:mathmaster/subtractiongamehard.dart';
import 'package:mathmaster/subtractiongamenormal.dart';
import 'package:mathmaster/subtractionplanet.dart';

void main() {
  runApp(const main1());
}

class main1 extends StatefulWidget {
  const main1({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<main1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Builder(builder: (context) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg_app.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                  // Your content goes here
                  child: Column(
                children: [
                  Container(
                    child: headerMaker('Math Master'),
                  ),
                  vrSpacing(15.0),
                  Center(
                      child: Text(
                    'Select category to play',
                    style: TextStyle(
                        fontFamily: 'LilitaOne',
                        fontSize: 30,
                        color: Colors.purple),
                  )),
                  Center(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              vrSpacing(5.0),
                              ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Dialog(
                                          // Wrap AlertDialog with Dialog widget
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          elevation: 0,
                                          backgroundColor: Colors.transparent,
                                          child: Container(
                                            height:
                                                270, // Set the desired height
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Column(
                                              children: [
                                                Center(
                                                  child: Text(
                                                    'Game Mode',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.red,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Text(
                                                  'ADDITION',
                                                  style: TextStyle(
                                                      fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily:
                                                          'RubikDoodleShadow'),
                                                ),
                                                Container(
                                                  width: 300,
                                                  child: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                Colors.green),
                                                    onPressed: () {
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) {
                                                        return AdditionEasyPage();
                                                      }));
                                                    },
                                                    child: Text('Easy'),
                                                  ),
                                                ),
                                                vrSpacing(10.0),
                                                Container(
                                                  width: 300,
                                                  child: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                Colors.blue),
                                                    onPressed: () {
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) {
                                                        return AdditionNormalPage();
                                                      }));
                                                    },
                                                    child: Text('Normal'),
                                                  ),
                                                ),
                                                vrSpacing(10.0),
                                                Container(
                                                  width: 300,
                                                  child: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                Colors.red),
                                                    onPressed: () {Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) {
                                                        return AdditionHardPage();
                                                      }));},
                                                    child: Text('Hard'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFF65247),
                                    side: BorderSide(
                                        width: 2, color: Colors.white),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          20.0), // Adjust the radius as needed
                                    ),
                                  ),
                                  child: Container(
                                    width: 100,
                                    height: 170,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.add,
                                          size: 50,
                                          color: Colors.white,
                                        ),
                                        Text('Add',
                                            style: TextStyle(
                                                fontFamily: 'LilitaOne',
                                                fontSize: 25,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white))
                                      ],
                                    ),
                                  )),
                              vrSpacing(5.0),
                              ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Dialog(
                                          // Wrap AlertDialog with Dialog widget
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          elevation: 0,
                                          backgroundColor: Colors.transparent,
                                          child: Container(
                                            height:
                                                270, // Set the desired height
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Column(
                                              children: [
                                                Center(
                                                  child: Text(
                                                    'Game Mode',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.red,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Text(
                                                  'SUBTRACTION',
                                                  style: TextStyle(
                                                      fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily:
                                                          'RubikDoodleShadow'),
                                                ),
                                                Container(
                                                  width: 300,
                                                  child: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                Colors.green),
                                                    onPressed: () {
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) {
                                                        return SubtractionEasyPage();
                                                      }));
                                                    },
                                                    child: Text('Easy'),
                                                  ),
                                                ),
                                                vrSpacing(10.0),
                                                Container(
                                                  width: 300,
                                                  child: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                Colors.blue),
                                                    onPressed: () {
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) {
                                                        return SubtractionNormalPage();
                                                      }));
                                                    },
                                                    child: Text('Normal'),
                                                  ),
                                                ),
                                                vrSpacing(10.0),
                                                Container(
                                                  width: 300,
                                                  child: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                Colors.red),
                                                    onPressed: () {
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) {
                                                        return SubtractionHardPage();
                                                      }));
                                                    },
                                                    child: Text('Hard'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFF0AD28),
                                    side: BorderSide(
                                        width: 2, color: Colors.white),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          20.0), // Adjust the radius as needed
                                    ),
                                  ),
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.remove,
                                          size: 50,
                                          color: Colors.white,
                                        ),
                                        Text('Subtract',
                                            style: TextStyle(
                                                fontFamily: 'LilitaOne',
                                                fontSize: 25,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white))
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                          hrSpacing(5.0),
                          Column(
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Dialog(
                                          // Wrap AlertDialog with Dialog widget
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          elevation: 0,
                                          backgroundColor: Colors.transparent,
                                          child: Container(
                                            height:
                                                270, // Set the desired height
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Column(
                                              children: [
                                                Center(
                                                  child: Text(
                                                    'Game Mode',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.red,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Text(
                                                  'DIVISION',
                                                  style: TextStyle(
                                                      fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily:
                                                          'RubikDoodleShadow'),
                                                ),
                                                Container(
                                                  width: 300,
                                                  child: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                Colors.green),
                                                    onPressed: () {
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) {
                                                        return DivisionEasyPage();
                                                      }));
                                                    },
                                                    child: Text('Easy'),
                                                  ),
                                                ),
                                                vrSpacing(10.0),
                                                Container(
                                                  width: 300,
                                                  child: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                Colors.blue),
                                                    onPressed: () {
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) {
                                                        return DivisionNormalPage();
                                                      }));
                                                    },
                                                    child: Text('Normal'),
                                                  ),
                                                ),
                                                vrSpacing(10.0),
                                                Container(
                                                  width: 300,
                                                  child: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                Colors.red),
                                                    onPressed: () {
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) {
                                                        return DivisionHardPage();
                                                      }));
                                                    },
                                                    child: Text('Hard'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF52AFE6),
                                    side: BorderSide(
                                        width: 2, color: Colors.white),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          20.0), // Adjust the radius as needed
                                    ),
                                  ),
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '÷',
                                          style: TextStyle(
                                              fontSize: 50,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text('Divide',
                                            style: TextStyle(
                                                fontFamily: 'LilitaOne',
                                                fontSize: 25,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white))
                                      ],
                                    ),
                                  )),
                              vrSpacing(5.0),
                              ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Dialog(
                                          // Wrap AlertDialog with Dialog widget
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          elevation: 0,
                                          backgroundColor: Colors.transparent,
                                          child: Container(
                                            height:
                                                270, // Set the desired height
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Column(
                                              children: [
                                                Center(
                                                  child: Text(
                                                    'Game Mode',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.red,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Text(
                                                  'MULTIPLICATION',
                                                  style: TextStyle(
                                                      fontSize: 28,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily:
                                                          'RubikDoodleShadow'),
                                                ),
                                                Container(
                                                  width: 300,
                                                  child: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                Colors.green),
                                                    onPressed: () {
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) {
                                                        return MultiplicationEasyPage();
                                                      }));
                                                    },
                                                    child: Text('Easy'),
                                                  ),
                                                ),
                                                vrSpacing(10.0),
                                                Container(
                                                  width: 300,
                                                  child: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                Colors.blue),
                                                    onPressed: () {
                                                       Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) {
                                                        return MultiplicationNormalPage();
                                                      }));
                                                    },
                                                    child: Text('Normal'),
                                                  ),
                                                ),
                                                vrSpacing(10.0),
                                                Container(
                                                  width: 300,
                                                  child: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                Colors.red),
                                                    onPressed: () {
                                                       Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) {
                                                        return MultiplicationHardPage();
                                                      }));
                                                    },
                                                    child: Text('Hard'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF565BAF),
                                    side: BorderSide(
                                        width: 2, color: Colors.white),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          20.0), // Adjust the radius as needed
                                    ),
                                  ),
                                  child: Container(
                                    width: 100,
                                    height: 170,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '×',
                                          style: TextStyle(
                                              fontSize: 50,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text('Multiply',
                                            style: TextStyle(
                                                fontFamily: 'LilitaOne',
                                                fontSize: 25,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white))
                                      ],
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  vrSpacing(20.0),
                  Container(
                      width: 400,
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1))),
                      child: Center(
                        child: Text('Learning Station',
                            style: TextStyle(
                                fontFamily: 'LilitaOne',
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF0089de))),
                      )),
                  vrSpacing(8.0),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return PlanetAddition();
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(226, 0, 0, 0),
                          side: BorderSide(width: 2, color: Colors.red)),
                      child: Container(
                        height: 68,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Addition Planet Station',
                                  style: TextStyle(
                                      fontFamily: 'LilitaOne',
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFF65247))),
                              Text(
                                'Want to learn how to add numbers? Fly and explore the Addition Planet.',
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      )),
                  vrSpacing(8.0),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return PlanetSubtraction();
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(226, 0, 0, 0),
                          side: BorderSide(width: 2, color: Color(0xFFF0AD28))),
                      child: Container(
                        height: 68,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Subtraction Planet Station',
                                  style: TextStyle(
                                      fontFamily: 'LilitaOne',
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFF0AD28))),
                              Text(
                                'Buckle up and get ready for a subtraction adventure on the subtraction planet.',
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      )),
                  vrSpacing(8.0),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return PlanetDivision();
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(226, 0, 0, 0),
                          side: BorderSide(width: 2, color: Color(0xFF52AFE6))),
                      child: Container(
                        height: 68,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Division Planet Station',
                                  style: TextStyle(
                                      fontFamily: 'LilitaOne',
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF52AFE6))),
                              Text(
                                'Gear up for division fun on Division Planet! Lets explore and conquer the math galaxy together!',
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      )),
                  vrSpacing(8.0),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return PlanetMultiplication();
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(226, 0, 0, 0),
                          side: BorderSide(width: 2, color: Color(0xFF565BAF))),
                      child: Container(
                        height: 68,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Multiplication Planet Station',
                                  style: TextStyle(
                                      fontFamily: 'LilitaOne',
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF565BAF))),
                              Text(
                                'Explore the Multiplication Planet to uncover big numbers on your adventure!',
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      )),
                ],
              )),
            ),
          );
        }),
      ),
    );
  }
}
