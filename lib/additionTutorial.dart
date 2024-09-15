import 'dart:math';
import 'package:flutter/material.dart';
import 'package:mathmaster/additionplanet.dart';
// import 'package:mathmaster/additionplanet.dart';

void main() {
  runApp(const PlanetAdditionTutorial());
}

class PlanetAdditionTutorial extends StatefulWidget {
  const PlanetAdditionTutorial({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<PlanetAdditionTutorial> {
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
                      image:
                          AssetImage('assets/images/addition_tutorial_bg.jpg'),
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
                              return PlanetAddition();
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
                            Text('ADDITION PLANET', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800, fontFamily: 'LilitaOne', color: Color(0xFF880808 )),),
                            Text(
                              'Adding 2 single numbers',
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
                                        'Embark on the ultimate math quest in Addition Planet: when a lone number meets its buddy number, they team up for a cosmic blast, making math magic happen!'),
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
                                                      'assets/images/basic_add.png',
                                                      fit: BoxFit.fitWidth,
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          child: Container(
                                            width: 130,
                                            child: Image.asset(
                                                'assets/images/basic_add.png'),
                                          ),
                                        ),
                                        hrSpacing(10.0),
                                        Container(
                                          width: 165,
                                          child: Column(
                                            children: [
                                              Text(
                                                'How to get the answer number 2 in 1+1?',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              vrSpacing(8.0),
                                              Text(
                                                  'Alright, space explorers! Ready for an out-of-this-world adventure in Addition Planet? Heres the mission: lift one finger on your left hand, then raise another on your right. When these finger-friends team up, youve got a magical duo, not just one, but TWO fingers! Thats how 1 + 1 equals 2'),
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
                              'Adding double and single numbers',
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
                                        'While continuing your journey on the addition planet, you meet two people who are starving to death, and they only have two apples.'),
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
                                                      'assets/images/double_one_addition.png',
                                                      fit: BoxFit.fitWidth,
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          child: Container(
                                             width: 130,
                                            child: Image.asset(
                                                'assets/images/double_one_addition.png'),
                                          ),
                                        ),
                                        hrSpacing(10.0),
                                        Container(
                                          width: 165,
                                          child: Column(
                                            children: [
                                              Text(
                                                'How to get the answer number 14 in 12+2?',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              vrSpacing(8.0),
                                              Text(
                                                  'You inspect your backpack, and you see 12 apples inside. Then you get all the apples outside on your backpack and join them with the other two apples of the two people. By joining 12 apples of yours and 2 apples of the other two people, you are all getting a total of 14 apples.')
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    vrSpacing(10.0),
                                    Text(
                                        'Arranging the numbers in a column before adding them will make it easier to solve than arranging them in rows.')
                                  ],
                                ),
                              ),
                            ),
                            vrSpacing(10.0),
                            Text(
                              'Adding 2 double numbers',
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
                                        'Walking with your new companion makes your journey more joyful, and as for fun, you ask your two companions a question. 11 + 12?'),
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
                                                      'assets/images/double_double_addition.png',
                                                      fit: BoxFit.fitWidth,
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          child: Image.asset(
                                              'assets/images/double_double_addition.png'),
                                        ),
                                        hrSpacing(10.0),
                                        Container(
                                          width: 165,
                                          child: Column(
                                            children: [
                                              Text(
                                                'How to get the answer number 23 in 11+12?',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              vrSpacing(8.0),
                                              Text(
                                                  'Your two companions think that 11 and 12 are both 2 numbers, so they both decide to separate the numbers: 1 and 2 are for the first companion, and 1 and 1 are for the second companion. The first companion gets his three pencils out of his packet and separates one pencil as number 1 and the other two pencils as number 2, joining all the pencils so he gets number 3. The other companion does the same until he gets the total of two pencils. So when they join together, their answer results in number 23, so the answer is 23.')
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
                            Center(
                              child: Text(
                                'Lets try to measure all the knowledge you gain while exploring the addition planet.',
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
                                                  'assets/images/addition_dialog_bg.jpg'), // Set your background image path
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
                                                          .add(num1 + num2);
                                            
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
                                                                  '$num1 + $num2 = ',
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
                                                                    2)
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
                                                                    3)
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
