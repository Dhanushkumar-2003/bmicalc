import 'package:bmicalc/sec.dart';
import 'package:flutter/material.dart';
// import 'calc.dart';
// import 'sec.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: depend_on_referenced_packages
// import 'package:newtest2/sec.dart';

import 'calc.dart';

const active = Color(0xFF1D1E33);
const inactive = Color(0xFF111328);

class About extends StatefulWidget {
  // const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  // Color male = inactive;
  // Color female = active;
  bool male = true;

  int height = 196;
  int weight = 0;
  int age = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Text(
          'calculator',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Container(
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: 200,
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Color(0xFF1D1E33),
                                borderRadius: BorderRadius.circular(33)),
                            child: GestureDetector(
                              onTap: () {
                                print("femll$male");
                                setState(() {});
                                male = !male;
                              },
                              child: Icon(FontAwesomeIcons.mars,
                                  size: 70,
                                  color: (male == true)
                                      ? Colors.black
                                      : Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                              color: active,
                              borderRadius: BorderRadius.circular(15)),
                          margin: EdgeInsets.all(15),
                          height: 200,
                          width: 200,
                          child: GestureDetector(
                            onTap: () {
                              print("msl$male");
                              setState(() {
                                male = !male;
                                ;
                              });
                            },
                            child: Icon(
                              FontAwesomeIcons.venus,
                              color:
                                  (male == true) ? Colors.white : Colors.black,
                              size: 60,
                            ),
                          )),
                    ),
                  ],
                ),
                Container(
                  height: 200,
                  width: 200,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text("HEIGHT"),
                      ),
                      Container(
                        child: Text(
                          '$height',
                          style: TextStyle(fontSize: 50, color: Colors.white),
                        ),
                      ),
                      Container(
                        child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          activeColor: Colors.red,
                          inactiveColor: Colors.blue,
                          onChanged: (double newvalue) {
                            setState(() {
                              height = newvalue.round();
                              print(newvalue);
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 200,
                      width: 20,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Color(0xFF1D1E33),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Text("AGE"),
                          ),
                          Container(
                            child: Text(
                              '$age',
                              style:
                                  TextStyle(fontSize: 40, color: Colors.white),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton(
                                backgroundColor: Color(0xFF0A0E21),
                                onPressed: () {
                                  setState(() {
                                    age += 1;
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.white,
                                ),
                              ),
                              FloatingActionButton(
                                backgroundColor: Color(0xFF0A0E21),
                                onPressed: () {
                                  setState(() {
                                    age -= 1;
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
                    Expanded(
                        child: Container(
                      height: 200,
                      width: 20,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Color(0xFF1D1E33),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Text("WEIGHT"),
                          ),
                          Container(
                            child: Text(
                              '$weight',
                              style:
                                  TextStyle(fontSize: 40, color: Colors.white),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                backgroundColor: Color(0xFF0A0E21),
                                onPressed: () {
                                  setState(() {
                                    weight += 1;
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              FloatingActionButton(
                                backgroundColor: Color(0xFF0A0E21),
                                onPressed: () {
                                  setState(() {
                                    weight -= 1;
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Calculator calc = Calculator(
                      height: height,
                      weight: weight,
                    );
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Sec(
                                calcbmi: calc.calcbmi(),
                                result: calc.result(),
                                value: calc.value())));
                    print('JJ');
                  },
                  child: Column(
                    children: [
                      Container(
                        // padding: EdgeInsets.only(left: 70, top: 5),
                        child: Center(
                          child: Text(
                            'calculate',
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          ),
                        ),
                        color: Colors.orange,
                        height: 80,
                        width: double.infinity,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
