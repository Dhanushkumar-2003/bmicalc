import 'package:flutter/material.dart';

class Sec extends StatelessWidget {
  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  Sec({
    required this.calcbmi,
    required this.result,
    required this.value,
  });
  final String result;
  final String calcbmi;
  final String value;

  // const Sec({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text(
                'YOUR RESULT',
                style: TextStyle(fontSize: 45, color: Colors.green),
              ),
            ),
            // SizedBox(
            //   height: 100,
            // ),
            Container(
              height: 460,
              color: Color(0xFF1D1E33),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    child: Text(
                      "Result is $result",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                  Text(
                    calcbmi.toString(),
                    style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF24D876)),
                  ),
                  Text(
                    textAlign: TextAlign.left,
                    value,
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              color: Colors.red,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Title(
                    color: Color.fromARGB(255, 186, 140, 136),
                    child: Center(
                      child: Text(
                        "RE- CALCULATE",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
