
import 'package:flutter/material.dart';

import 'BMI_Screen.dart';

class Result extends StatelessWidget {
  final String s1;
  final String massage;
  final double bmiResult;

  Result({
    required this.bmiResult,
    required this.s1,
    required this.massage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.all(10.0),
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
        child: Container(
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Result',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                width: double.infinity,
                height: 460,
                decoration: BoxDecoration(
                  color: Colors.blueGrey[900],
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40.0,
                    ),
                    Text(
                      '$s1',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 60.0,
                    ),
                    Text(
                      '${bmiResult.round()}',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 70.0,
                      ),
                    ),
                    SizedBox(
                      height: 60.0,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 8.0, end: 8.0),
                      child: Text(
                        '$massage',
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                width: double.infinity,
                height: 70,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BMIcalculator()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStatePropertyAll(Colors.redAccent),
                    ),
                    child: Text(
                      'RE-CALCULATOR',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
