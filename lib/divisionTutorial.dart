import 'dart:math';
import 'package:flutter/material.dart';
import 'package:mathmaster/additionplanet.dart';
// import 'package:mathmaster/additionplanet.dart';

void main() {
  runApp(const PlanetDivisionTutorial());
}

class PlanetDivisionTutorial extends StatefulWidget {
  const PlanetDivisionTutorial({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<PlanetDivisionTutorial> {
  int _min = 1;
  int _max = 11;
  List<TextEditingController> _answerControllers =
      List.generate(10, (_) => TextEditingController());
  List<double> _correctAnswers = []; // Use double for division results
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
                      image: AssetImage(
                          'assets/images/division_tutorial_bg.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 380, top: 10),
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
                            Text(
                              'DIVISION PLANET', // Updated text
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'LilitaOne',
                                  color: Color(0xFF5077bd)),
                            ),
                            vrSpacing(5.0),
                            Text(
                              'Dividing 2 single numbers',
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
                                        'Welcome to the division planet, where everyone is equal. Equality is what is needed on this planet; there are no poor or rich on this planet because everyone will be treated equally.'),
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
                                                      'assets/images/division_basic.png',
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
                                                'assets/images/division_basic.png'),
                                          ),
                                        ),
                                        hrSpacing(10.0),
                                        Container(
                                          width: 165,
                                          child: Column(
                                            children: [
                                              Text(
                                                'How many set of 2 coins you get if wou divide the 1 set of 4 coins?',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              vrSpacing(8.0),
                                              Text(
                                                  'You have 4 coins inside your wallet, and you want to buy candy that is worth 2 coins. You start separating the 4 coins into two sets, so a set of 4 coins will become a set of 2 coins, so overall, with 4 coins, you will get a set of 2 coins. That is why 4÷2=2.'),
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
                                'Let\'s try to measure all the knowledge you gained while exploring the Division planet.',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFFc7e2e7),
                                ),
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
                                                  'assets/images/division_dialog_bg.jpg'),
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
                                                fontFamily: 'RubikDoodleShadow',
                                              ),
                                            ),
                                            content: SingleChildScrollView(
                                              child: ConstrainedBox(
                                                constraints: BoxConstraints(
                                                    maxHeight: 800.0),
                                                child: IntrinsicHeight(
                                                  child: Column(
                                                    children: List.generate(10,
                                                        (index) {
                                                      int num1 = Random()
                                                              .nextInt(_max -
                                                                  _min +
                                                                  1) +
                                                          _min;
                                                      int num2 = Random()
                                                              .nextInt(_max -
                                                                  _min +
                                                                  1) +
                                                          _min;

                                                      // Ensure that num1 is divisible by num2 and non-zero
                                                      num1 = (num1 -
                                                              (num1 % num2)) +
                                                          num2;

                                                      _correctAnswers.add(num1 /
                                                          num2); // Use double for division results

                                                      return Column(
                                                        children: [
                                                          Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Text(
                                                                '${index + 1}.)',
                                                                style:
                                                                    TextStyle(
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
                                                                  '$num1 ÷ $num2 = ',
                                                                  style:
                                                                      TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    fontSize:
                                                                        20,
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
                                                                  alignment:
                                                                      Alignment
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
                                                                            BorderSide(color: Colors.blue),
                                                                      ),
                                                                      enabledBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide: BorderSide(
                                                                            color: const Color.fromARGB(
                                                                                255,
                                                                                218,
                                                                                170,
                                                                                170)),
                                                                      ),
                                                                      // Reduce padding and contentPadding
                                                                      contentPadding:
                                                                          EdgeInsets.symmetric(
                                                                              vertical: 4.0),
                                                                      isDense:
                                                                          true,
                                                                    ),
                                                                    keyboardType:
                                                                        TextInputType
                                                                            .numberWithOptions(
                                                                      decimal:
                                                                          true,
                                                                      signed:
                                                                          false,
                                                                    ),
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
                                                      Color(0xFF3a4c7a),
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  correctCount = 0;
                                                  correctAnswersList.clear();
                                                  wrongAnswersList.clear();

                                                  for (int i = 0; i < 10; i++) {
                                                    double userAnswer =
                                                        double.tryParse(
                                                                _answerControllers[
                                                                        i]
                                                                    .text) ??
                                                            0;

                                                    if (userAnswer ==
                                                        _correctAnswers[i]) {
                                                      correctCount++;
                                                      correctAnswersList.add(
                                                          '${i + 1}. ${_correctAnswers[i].toStringAsFixed(3)}');
                                                    } else {
                                                      wrongAnswersList.add(
                                                          '${i + 1}. Answer: ${_correctAnswers[i].toStringAsFixed(3)}');
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
                                                        content:
                                                            SingleChildScrollView(
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
                                                                  Icons
                                                                      .thumb_up,
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
                                                                  color: Colors
                                                                      .red,
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
                                                                              width: 500,
                                                                              child: Row(
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
