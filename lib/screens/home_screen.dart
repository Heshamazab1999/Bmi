import 'dart:math';

import 'package:bmi/components/container_age.dart';
import 'package:bmi/components/container_gender.dart';
import 'package:bmi/components/container_slider.dart';
import 'package:bmi/screens/second_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMe = true;
  int age = 20;
  int weight = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  ContainerOfGender(
                    function: () {
                      setState(() {
                        isMe = true;
                      });
                    },
                    name: "Male",
                    image: "assets/images/male.png",
                    color: isMe ? Colors.blue : Colors.grey[400],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ContainerOfGender(
                    function: () {
                      setState(() {
                        isMe = false;
                      });
                    },
                    name: "Female",
                    image: "assets/images/female.png",
                    color: !isMe ? Colors.blue : Colors.grey[400],
                  ),
                ],
              ),
            )),
            Expanded(child: ContainerOfSlider()),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[400]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "AGE",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              age.toString(),
                              style: TextStyle(fontSize: 25),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: "G--",

                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(Icons.remove),
                                ),
                                FloatingActionButton(
                                  heroTag: "g++",

                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(Icons.add),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[400]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "WEIGHT",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              weight.toString(),
                              style: TextStyle(fontSize: 25),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: "w--",

                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(Icons.remove),
                                ),
                                FloatingActionButton(
                                  heroTag: "w++",
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(Icons.add),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: MaterialButton(
                height: 50,
                color: Colors.blue,
                onPressed: () {
                  double result = weight / pow(160 / 100, 2);
                  print(result);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondScreen(
                        age: age,
                        result: result.round(),
                        isMale: isMe,
                      )));
                },
                child: Text(
                  "Calculate",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
