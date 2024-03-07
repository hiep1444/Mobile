import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:untitled2/buttons.dart';

class HomeScreen extends StatefulWidget {
  //1571020100
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  //1571020100

  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                //1571020100
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      //1571020100
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.centerRight,
                      child: Text(
                        userInput,
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      alignment: Alignment.centerRight,
                      child: Text(
                        answer,
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            Expanded(
              //1571020100
              flex: 2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        MyButton(
                          //1571020100
                          title: 'AC',
                          onPress: () {
                            setState(() {
                              userInput = '';
                              answer = '0';
                            });
                          },
                        ),
                        MyButton(title: '+/-', onPress: () {}),
                        MyButton(
                          //1571020100
                          title: '%',
                          onPress: () {
                            setState(() {
                              userInput += '%';
                            });
                          },
                        ),
                        MyButton(
                          //1571020100
                          title: '/',
                          onPress: () {
                            setState(() {
                              userInput += '/';
                            });
                          },
                          color: Color(0xffffc60a),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    //1571020100
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        MyButton(
                          title: '7',
                          onPress: () {
                            setState(() {
                              userInput += '7';
                            });
                          },
                        ),
                        MyButton(
                          //1571020100
                          title: '8',
                          onPress: () {
                            setState(() {
                              userInput += '8';
                            });
                          },
                        ),
                        MyButton(
                          //1571020100
                          title: '9',
                          onPress: () {
                            setState(() {
                              userInput += '9';
                            });
                          },
                        ),
                        MyButton(
                          //1571020100
                          title: 'x',
                          onPress: () {
                            setState(() {
                              userInput += 'x';
                            });
                          },
                          color: Color(0xffffc60a),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    //1571020100
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        MyButton(
                          //1571020100
                          title: '4',
                          onPress: () {
                            setState(() {
                              userInput += '4';
                            });
                          },
                        ),
                        MyButton(
                          //1571020100
                          title: '5',
                          onPress: () {
                            setState(() {
                              userInput += '5';
                            });
                          },
                        ),
                        MyButton(
                          //1571020100
                          title: '6',
                          onPress: () {
                            setState(() {
                              userInput += '6';
                            });
                          },
                        ),
                        MyButton(
                          //1571020100
                          title: '-',
                          onPress: () {
                            setState(() {
                              userInput += '-';
                            });
                          },
                          color: Color(0xffffc60a),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    //1571020100
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        MyButton(
                          title: '1',
                          onPress: () {
                            setState(() {
                              userInput += '1';
                            });
                          },
                        ),
                        MyButton(
                          //1571020100
                          title: '2',
                          onPress: () {
                            setState(() {
                              userInput += '2';
                            });
                          },
                        ),
                        MyButton(
                          //1571020100
                          title: '3',
                          onPress: () {
                            setState(() {
                              userInput += '3';
                            });
                          },
                        ),
                        MyButton(
                          //1571020100
                          title: '+',
                          onPress: () {
                            setState(() {
                              userInput += '+';
                            });
                          },
                          color: Color(0xffffc60a),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    //1571020100
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        MyButton(
                          title: '0',
                          onPress: () {
                            setState(() {
                              userInput += '0';
                            });
                          },
                        ),
                        MyButton(
                          //1571020100
                          title: '.',
                          onPress: () {
                            setState(() {
                              userInput += '.';
                            });
                          },
                        ),
                        MyButton(
                          //1571020100
                          title: 'DEL',
                          onPress: () {
                            setState(() {
                              userInput = userInput.substring(0, userInput.length - 1);
                            });
                          },
                        ),
                        MyButton(
                          //1571020100
                          title: '=',
                          onPress: () {
                            equalPressed();
                            setState(() {});
                          },
                          color: Color(0xffffc60a),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void equalPressed() {
    //1571020100
    String finaluserinput1571020100 = userInput;
    finaluserinput1571020100 = userInput.replaceAll('x', '*');

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput1571020100);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
  }
}
