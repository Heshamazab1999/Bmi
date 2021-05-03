import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final bool isMale;
  final int result;
  final int age;

  SecondScreen({this.result, this.age, this.isMale});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Male:${isMale ? 'male' : 'female'}",
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "Result:$result",
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "age:$age",
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
