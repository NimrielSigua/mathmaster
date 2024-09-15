import 'dart:math';
import 'package:flutter/material.dart';
import 'package:mathmaster/subtractionplanet.dart';
// import 'package:mathmaster/additionplanet.dart';

void main() {
  runApp(const PlanetSubtractionTutorial());
}

class PlanetSubtractionTutorial extends StatefulWidget {
  const PlanetSubtractionTutorial({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<PlanetSubtractionTutorial> {
  int _min = 1;
  int _max = 30;
  List<TextEditingController> _answerControllers =
      List.generate(10, (_) => TextEditingController());
  List<int> _correctAnswers = [];
  List<String> correctAnswersList = [];
  List<String> wrongAnswersList = [];
  int correctCount = 0;
  bool showleveltwo = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Builder(
          builder: (context) {
            return Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/subtraction_tutorial_bg.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 380),
                        child: IconButton(
                          onPressed: () {
                           Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return PlanetSubtraction();
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
                            Text('SUBTRACTION PLANET', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800, fontFamily: 'LilitaOne', color: Color(0xFF602d27 )),),
                            Text(
                              'Subtracting 2 single numbers',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF2441c0),
                                  fontWeight: FontWeight.w600),
                            ),
                            vrSpacing(10.0),
                            Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                        'In your second journey in the math universe, you landed on the subtraction planet, where anyone will leave and nothing will stay. This planet is the loneliest planet.'),
                                    vrSpacing(10.0),
                                    Text(
                                      'Here is an example: ',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  content: Container(
                                                    width: 300,
                                                    child: Image.asset(
                                                      'assets/images/basic_subtraction.png',
                                                      fit: BoxFit
                                                          .fitWidth,
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          child: Container(
                                             width: 130,
                                            child: Image.asset(
                                                'assets/images/basic_subtraction.png'),
                                          ),
                                        ),
                                        hrSpacing(10.0),
                                        Container(
                                          width: 165,
                                          child: Column(
                                            children: [
                                              Text(
                                                'How to get the answer number 1 in 2-1?',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              vrSpacing(8.0),
                                              Text(
                                                  'When you were going to the subtraction planet, you had a spaceship with you, and you landed together, so two spaceships landed, but one suddenly left, and only your spaceship was left. Now, you think that if there are 2 ships and 1 left, there is only 1 ship remaining.'),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            vrSpacing(10.0),
                            Text(
                              'Subtact double and single numbers',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF2441c0),
                                  fontWeight: FontWeight.w600),
                            ),
                            vrSpacing(10.0),
                            Card(
                              
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                        'As you slowly descend from the spaceship, you see the astronauts looking sad, but you realize that its normal for people to be sad on the subtraction planet because its a planet where no one will stay with you forever.'),
                                    vrSpacing(10.0),
                                    Text(
                                      'Here is an example: ',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  content: Container(
                                                    width: 300,
                                                    child: Image.asset(
                                                      'assets/images/double_one_subtraction.png',
                                                      fit: BoxFit
                                                          .fitWidth,
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          child: Container(
                                            width: 130,
                                            child: Image.asset(
                                                'assets/images/double_one_subtraction.png'),
                                          ),
                                        ),
                                        hrSpacing(10.0),
                                        Container(
                                          width: 165,
                                          child: Column(
                                            children: [
                                              Text(
                                                'How to get the answer number 10 in 11-1?',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              vrSpacing(8.0),
                                              Text(
                                                  'As you approach the 11 astronauts, you see that one is leaving, so the 10 remaining astronauts are sad. When there are 11 stronauts and 1 left, only 10 will remain: 11-1 = 10.')
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    ],
                                ),
                              ),
                            ),
                            vrSpacing(10.0),
                            Text(
                              'Subtract 2 double numbers',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF2441c0),
                                  fontWeight: FontWeight.w600),
                            ),
                            vrSpacing(10.0),
                            Card(
                              
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                        'After going around the subtraction planet for a long time, you wondered why it was so rare to see other people on this planet, and thats when you realized that maybe people are rarely seen because they have all left, and maybe you are the only one left.'),
                                    vrSpacing(10.0),
                                    Text(
                                      'Here is an example: ',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  content: Container(
                                                    width: 300,
                                                    child: Image.asset(
                                                      'assets/images/double_double_subtraction.png',
                                                      fit: BoxFit
                                                          .fitWidth,
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          child: Image.asset(
                                              'assets/images/double_double_subtraction.png'),
                                        ),
                                        hrSpacing(10.0),
                                        Container(
                                          width: 165,
                                          child: Column(
                                            children: [
                                              Text(
                                                'How to get the answer number 2 in 14-12?',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              vrSpacing(8.0),
                                              Text(
                                                  'In subtracting two double numbers, you should start by subtractioning the right side, which is 4-2=2, then proceed to the left side and subtracting 1-1=0. If you align the answer base in the format, you can get a 02, but it is not necessary to put a 0 as the first digit, so put only the 2 so you will get 14-12=2. That is how subtracting two double numbers works.')
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    vrSpacing(8.0),
                                    Row(
                                      children: [
                                        Container(
                                          width: 165,
                                          child: Column(
                                            children: [
                                              
                                              Text(
                                                  'In subtracting two double numbers, you should start by subtractioning the right side, which is 4-2=2, then proceed to the left side and subtracting 1-1=0. If you align the answer base in the format, you can get a 02, but it is not necessary to put a 0 as the first digit, so put only the 2 so you will get 14-12=2. That is how subtracting two double numbers works.')
                                            ],
                                          ),
                                        ),
                                         hrSpacing(10.0),
                                         GestureDetector(
                                          onTap: () {
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  content: Container(
                                                    width: 300,
                                                    child: Image.asset(
                                                      'assets/images/two_double_subtraction.png',
                                                      fit: BoxFit
                                                          .fitWidth,
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          child: Container(
                                            width: 130,
                                            child: Image.asset(
                                                'assets/images/two_double_subtraction.png'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            vrSpacing(10.0),
                            Center(
                              child: Text(
                                'Lets try to measure all the knowledge you gain while exploring the Subtraction planet.',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFc7e2e7)),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            vrSpacing(5.0),
                            ElevatedButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return StatefulBuilder(
                                      builder: (BuildContext context,
                                          StateSetter setState) {
                                        return Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/subtraction_dialog.jpg'), // Set your background image path
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          child: AlertDialog(
                                            title: Text(
                                              'Solve The Problems',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 30,
                                                  fontFamily:
                                                      'RubikDoodleShadow'),
                                            ),
                                            content: SingleChildScrollView(
                                              child: ConstrainedBox(
                                                constraints: BoxConstraints(
                                                    maxHeight: 800.0),
                                                child: IntrinsicHeight(
                                                  child: Column(
                                                    children: List.generate(10,
                                                        (index) {
                                                      int num1 = Random().nextInt(
                                                              _max - _min + 1) +
                                                          _min;
                                                      int num2 = Random().nextInt(
                                                              _max - _min + 1) +
                                                          _min;
                                                      _correctAnswers
                                                          .add(num1 - num2);
                                            
                                                      return Column(
                                                        children: [
                                                          Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Text(
                                                                '${index + 1}.)',
                                                                style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  fontSize: 19,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          114,
                                                                          131,
                                                                          175),
                                                                ),
                                                              ),
                                                              hrSpacing(10.0),
                                                              Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child: Text(
                                                                  '$num1 - $num2 = ',
                                                                  style:
                                                                      TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    fontSize: 20,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            242,
                                                                            242,
                                                                            242),
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Align(
                                                                  alignment: Alignment
                                                                      .bottomCenter,
                                                                  child:
                                                                      TextField(
                                                                    controller:
                                                                        _answerControllers[
                                                                            index],
                                                                    decoration:
                                                                        InputDecoration(
                                                                      hintText:
                                                                          "Answer",
                                                                      hintStyle: TextStyle(
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              186,
                                                                              184,
                                                                              188)),
                                                                      focusedBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                                color: Colors.blue),
                                                                      ),
                                                                      enabledBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide: BorderSide(
                                                                            color: const Color
                                                                                .fromARGB(
                                                                                255,
                                                                                218,
                                                                                170,
                                                                                170)),
                                                                      ),
                                                                      // Reduce padding and contentPadding
                                                                      contentPadding:
                                                                          EdgeInsets.symmetric(
                                                                              vertical:
                                                                                  4.0),
                                                                      isDense:
                                                                          true,
                                                                    ),
                                                                    keyboardType:
                                                                        TextInputType
                                                                            .number,
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          vrSpacing(8.0),
                                                        ],
                                                      );
                                                    }),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            actions: [
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Color(0xFF3a4c7a)),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  correctCount = 0;
                                                  correctAnswersList.clear();
                                                  wrongAnswersList.clear();

                                                  for (int i = 0; i < 10; i++) {
                                                    int userAnswer = int.tryParse(
                                                            _answerControllers[
                                                                    i]
                                                                .text) ??
                                                        0;
                                                    if (userAnswer ==
                                                        _correctAnswers[i]) {
                                                      correctCount++;
                                                      correctAnswersList.add(
                                                          '${i + 1}. ${_correctAnswers[i]}');
                                                    } else {
                                                      wrongAnswersList.add(
                                                          '${i + 1}. Answer: ${_correctAnswers[i]}');
                                                    }
                                                  }

                                                  showDialog(
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return AlertDialog(
                                                        title: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.yellow,
                                                              size: 30,
                                                            ),
                                                            SizedBox(width: 10),
                                                            Text(
                                                              'Fun Result',
                                                              style: TextStyle(
                                                                color:
                                                                    Colors.blue,
                                                                fontSize: 24,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        content: SingleChildScrollView(
                                                          child: ConstrainedBox(
                                                            constraints:
                                                                BoxConstraints(
                                                              maxHeight: 700.0,
                                                            ),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                
                                                                Icon(
                                                                  Icons.check,
                                                                  color: Colors
                                                                      .green,
                                                                  size: 40,
                                                                ),
                                                                vrSpacing(10.0),
                                                                Text(
                                                                  'Number of Correct Answers: $correctCount',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18),
                                                                ),
                                                                vrSpacing(10.0),
                                                                Icon(
                                                                  Icons.thumb_up,
                                                                  color: Colors
                                                                      .green,
                                                                  size: 40,
                                                                ),
                                                                vrSpacing(10.0),
                                                                Text(
                                                                  'Correct Answers:',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18),
                                                                ),
                                                                Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children:
                                                                      correctAnswersList
                                                                          .map(
                                                                            (correctAnswer) =>
                                                                                Row(
                                                                              children: [
                                                                                Icon(
                                                                                  Icons.check_circle,
                                                                                  color: Colors.green,
                                                                                ),
                                                                                Text(correctAnswer),
                                                                              ],
                                                                            ),
                                                                          )
                                                                          .toList(),
                                                                ),
                                                                vrSpacing(10.0),
                                                                Icon(
                                                                  Icons
                                                                      .thumb_down,
                                                                  color:
                                                                      Colors.red,
                                                                  size: 40,
                                                                ),
                                                                vrSpacing(10.0),
                                                                Text(
                                                                  'Wrong Answers:',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18),
                                                                ),
                                                                Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children:
                                                                      wrongAnswersList
                                                                          .map(
                                                                            (wrongAnswer) =>
                                                                                Container(
                                                                              width:
                                                                                  500,
                                                                              child:
                                                                                  Row(
                                                                                children: [
                                                                                  Icon(
                                                                                    Icons.cancel,
                                                                                    color: Colors.red,
                                                                                  ),
                                                                                  Text(wrongAnswer),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          )
                                                                          .toList(),
                                                                ),
                                                                vrSpacing(10.0),
                                                                Text(
                                                                  'Scores: $correctCount / 10',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18),
                                                                ),
                                                        
                                                        
                                                                vrSpacing(10.0),
                                                                if (correctCount <=
                                                                    5)
                                                                  Text(
                                                                    'Oops! Try again!',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          30,
                                                                      fontFamily:
                                                                          'RubikDoodleShadow',
                                                                      color: Colors
                                                                          .red,
                                                                    ),
                                                                  ),
                                                                if (correctCount >=
                                                                    6)
                                                                  Center(
                                                                    child: Text(
                                                                      'Congratulations! 🎉',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            30,
                                                                        fontFamily:
                                                                            'RubikDoodleShadow',
                                                                        color: Colors
                                                                            .blue,
                                                                      ),
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        actions: [
                                                          ElevatedButton(
                                                            onPressed: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child:
                                                                Text('Close'),
                                                          )
                                                        ],
                                                        backgroundColor:
                                                            Colors.yellow[100],
                                                      );
                                                    },
                                                  );
                                                },
                                                child: Text('Submit'),
                                              )
                                            ],
                                            backgroundColor: Colors
                                                .transparent, // Set the background of AlertDialog to transparent
                                          ),
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                foregroundColor: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Measuring knowledge',
                                    style: TextStyle(fontSize: 20)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

Widget vrSpacing(double value) {
  return SizedBox(height: value);
}

Widget hrSpacing(double value) {
  return SizedBox(width: value);
}
