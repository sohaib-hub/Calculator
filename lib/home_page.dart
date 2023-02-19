import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'constancs.dart';
import 'my_button/buttons.dart';
//import 'package:math_expressions/math_expressions.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var userinput = '';
  var answer = '';
  @override
  void equalpress() {
    Parser p = Parser();
    Expression expression = p.parse(userinput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: 320,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(9)),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                              child: Text(
                                userinput.toString(),
                                style:
                                    const TextStyle(color: white, fontSize: 50),
                              ),
                            ),
                            Center(
                              child: Text(
                                answer,
                                style:
                                    const TextStyle(color: white, fontSize: 30),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 50,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      MyButton(
                        title: 'AC',
                        onpress: () {
                          userinput = '';
                          answer = '';
                          setState(() {});
                        },
                        color: purple,
                      ),
                      MyButton(
                        title: '+/-',
                        onpress: () {
                          userinput += '=/-';
                          answer = 'math error';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '%',
                        onpress: () {
                          userinput += '%';

                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '/',
                        onpress: () {
                          userinput += '/';

                          setState(() {});
                        },
                        color: orange,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        title: '7',
                        onpress: () {
                          userinput += '7';

                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '8',
                        onpress: () {
                          userinput += '8';

                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '9',
                        onpress: () {
                          userinput += '9';

                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: 'x',
                        onpress: () {
                          userinput += '*';

                          setState(() {});
                        },
                        color: orange,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        title: '4',
                        onpress: () {
                          userinput += '4';

                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '5',
                        onpress: () {
                          userinput += '5';

                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '6',
                        onpress: () {
                          userinput += '6';

                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '-',
                        onpress: () {
                          userinput += '-';

                          setState(() {});
                        },
                        color: orange,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        title: '1',
                        onpress: () {
                          userinput += '1';

                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '2',
                        onpress: () {
                          userinput += '2';

                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '3',
                        onpress: () {
                          userinput += '3';

                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '+',
                        onpress: () {
                          userinput += '+';

                          setState(() {});
                        },
                        color: orange,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        title: '0',
                        onpress: () {
                          userinput += '0';

                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '-',
                        onpress: () {
                          userinput += '-';

                          setState(() {});
                        },
                        color: orange,
                      ),
                      MyButton(
                        title: 'DEL',
                        onpress: () {
                          userinput =
                              userinput.substring(0, userinput.length - 1);
                          answer = '';
                          setState(() {});
                        },
                        color: pink,
                      ),
                      MyButton(
                        title: '=',
                        onpress: () {
                          equalpress();

                          setState(() {});
                        },
                        color: pink,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
