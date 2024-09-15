import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mathmaster/home.dart';

class DivisionEasyPage extends StatefulWidget {
  @override
  _DivisionEasyPageState createState() => _DivisionEasyPageState();
}

class _DivisionEasyPageState extends State<DivisionEasyPage> {
  int _score = 0;
  int _wrongAnswers = 0;
  int _correctAnswer = 0;
  int _min = 1;
  int _max = 5;
  int _num1 = 0;
  int _num2 = 0;
  List<int> _options = [];
  int _timerValue = 10;
  late Timer _timer;
  bool playbutton = false;
  bool _gameOver = false;

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_timerValue > 0) {
        setState(() {
          _timerValue--;
        });
      } else {
        // Game Over
        _timer.cancel();
        _showGameOverDialog();
      }
    });
  }

  void _generateQuestion() {
    _num2 = Random().nextInt(_max - _min + 1) + _min;

    // Ensure that the result of division is a whole number
    _num1 = _num2 * (Random().nextInt(_max - _min + 1) + _min);

    _correctAnswer = _num1 ~/ _num2;

    _options = [_correctAnswer];
    for (int i = 0; i < 3; i++) {
      int option = Random().nextInt(_max * 2 - _min + 1) + _min;
      while (_options.contains(option)) {
        option = Random().nextInt(_max * 2 - _min + 1) + _min;
      }
      _options.add(option);
    }

    _options.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Builder(builder: (context) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/division_game_bg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            _timer.cancel();
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return main1();
                              }),
                            );
                          },
                          icon: Icon(Icons.arrow_back,
                              color: Colors.white, size: 30),
                        )
                      ],
                    ),
                  ),
                  Text(
                    'EASY LEVEL',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFF6C22)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  if (!playbutton)
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          playbutton = !playbutton;
                          _gameOver = false;
                          _startTimer();
                          _generateQuestion();
                        });
                      },
                      child: Text('Play'),
                    ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Correct: ',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        '$_score',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Wrong: ',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        '$_wrongAnswers',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                   SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Time: ',
                        style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        '$_timerValue',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(161, 0, 0, 0),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '$_num1 ÷ $_num2',
                                  style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'LilitaOne',
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      if(!_gameOver)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            child: ElevatedButton(
                              onPressed: _options.length > 0
                                  ? () {
                                      _checkAnswer(_options[0]);
                                    }
                                  : null,
                              child: Text(
                                _options.length > 0
                                    ? _options[0].toString()
                                    : '',
                                style: TextStyle(fontSize: 30),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFC70039)),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 70,
                            height: 70,
                            child: ElevatedButton(
                              onPressed: _options.length > 1
                                  ? () {
                                      _checkAnswer(_options[1]);
                                    }
                                  : null,
                              child: Text(
                                _options.length > 1
                                    ? _options[1].toString()
                                    : '',
                                style: TextStyle(fontSize: 30),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFC70039)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      if(!_gameOver)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            child: ElevatedButton(
                              onPressed: _options.length > 2
                                  ? () {
                                      _checkAnswer(_options[2]);
                                    }
                                  : null,
                              child: Text(
                                _options.length > 2
                                    ? _options[2].toString()
                                    : '',
                                style: TextStyle(fontSize: 30),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFC70039)),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 70,
                            height: 70,
                            child: ElevatedButton(
                              onPressed: _options.length > 3
                                  ? () {
                                      _checkAnswer(_options[3]);
                                    }
                                  : null,
                              child: Text(
                                _options.length > 3
                                    ? _options[3].toString()
                                    : '',
                                style: TextStyle(fontSize: 30),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFC70039)),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  void _checkAnswer(int selectedAnswer) {
    _timer.cancel();

      if (selectedAnswer == _correctAnswer) {
        _score++;
      } else {
        _wrongAnswers++;
        if (_wrongAnswers == 2) {
          _showGameOverDialog();
          _timer.cancel();
        }
      }

      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Color.fromARGB(149, 0, 0, 0),
            title: Center(
              child: Text(
                selectedAnswer == _correctAnswer ? 'Correct!' : 'Wrong!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'LilitaOne',
                  color: selectedAnswer == _correctAnswer
                      ? Colors.blue
                      : Colors.red,
                ),
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Total Score: $_score',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            actions: [
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(133, 33, 149, 243),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    setState(() {
                      // Generate a new question
                      _generateQuestion();
                      // Reset the timer
                      _timerValue = 10;
                      _startTimer();
                      if (_wrongAnswers == 2) {
                        _timer.cancel();
                      }
                    });
                  },
                  child: Text('Next'),
                ),
              ),
            ],
          );
        },
      );
    
  }

  void _showGameOverDialog() {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Color.fromARGB(149, 0, 0, 0),
        title: Center(
          child: Text(
            'Game Over!',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              fontFamily: 'LilitaOne',
              color: Colors.red,
            ),
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Total Score: $_score',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: [
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(133, 33, 149, 243),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  playbutton = false;
                  _gameOver = true;
                  _correctAnswer = 0;
                  _wrongAnswers = 0;
                  _score = 0;
                  _num1 = 0;
                  _num2 = 0;
                  _timerValue = 10;
                });
              },
              child: Text('Close'),
            ),
          ),
        ],
      );
    },
  );
}

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
