import 'dart:math';
import 'package:flutter/material.dart';

import 'Result_Screen.dart';

class BMIcalculator extends StatefulWidget {
  @override
  State<BMIcalculator> createState() => _BMIcalculatorState();
}

class _BMIcalculatorState extends State<BMIcalculator> {
  int age = 18, weight = 70, height = 175;
  var bmiResult;
  String s1 = 'NORMAL',
      massage = 'Honey! You have the prefect bmi \n Good Job :-)';
  Color? maleColor = Colors.blueGrey[900];

  Color? femaleColor = Colors.blueGrey[900];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.black45,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'BMICALCULATOR',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Padding(
        padding:
        const EdgeInsetsDirectional.only(start: 10.0, top: 10.0, end: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 180,
                    height: 170,
                    // color: Colors.blueGrey[900],
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[900],
                      borderRadius: BorderRadius.circular(
                        50.0,
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          maleColor = Colors.redAccent;
                          femaleColor = Colors.blueGrey[900];
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(maleColor),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            color: Colors.white,
                            size: 130,
                          ),
                          Text(
                            'MALE',
                            style:
                            TextStyle(color: Colors.grey, fontSize: 30.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 180,
                    height: 170,
                    //color: Colors.blueGrey[900],
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[900],
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          femaleColor = Colors.redAccent;
                          maleColor = Colors.blueGrey[900];
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(femaleColor),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            color: Colors.white,
                            size: 130,
                          ),
                          Text(
                            'FEMALE',
                            style:
                            TextStyle(color: Colors.grey, fontSize: 30.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 170,
                decoration: BoxDecoration(
                  color: Colors.blueGrey[900],
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(color: Colors.grey, fontSize: 30.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '$height',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                          thumbColor: Colors.redAccent,
                          thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 20)),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        activeColor: Colors.redAccent,
                        inactiveColor: Colors.grey,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[900],
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                    ),
                    width: 180,
                    height: 170,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 30.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              '$weight',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'kg',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Colors.redAccent)),
                                child: Icon(
                                  Icons.add,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                MaterialStatePropertyAll(Colors.grey),
                              ),
                              child: Icon(
                                Icons.remove,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[900],
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                    ),
                    width: 180,
                    height: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 30.0,
                          ),
                        ),
                        Text(
                          '$age',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  10.0,
                                ),
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Colors.redAccent)),
                                child: Icon(
                                  Icons.add,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                MaterialStatePropertyAll(Colors.grey),
                              ),
                              child: Icon(
                                Icons.remove,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              width: double.infinity,
              height: 70.0,
              child: ElevatedButton(
                onPressed: () {
                  bmiResult = weight / pow(height / 100, 2);
                  if (bmiResult > 25) {
                    s1 = 'OVER WEIGHT';
                    massage =
                    'You need to do some exercises to get the prefect bmi';
                  } else if (bmiResult < 18.5) {
                    s1 = 'UNDER WEIGHT';
                    massage =
                    'Ohh darling,You have a lower than normal body weight';
                  }
                  // print(bmiResult.round());
                  // print(s1);
                  // print(massage);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Result(
                          bmiResult: bmiResult,
                          s1: s1,
                          massage: massage,
                        )),
                  );
                },
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.redAccent),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
