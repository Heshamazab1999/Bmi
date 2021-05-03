import 'package:flutter/material.dart';

class ContainerOfSlider extends StatefulWidget {
  @override
  _ContainerOfSliderState createState() => _ContainerOfSliderState();
}

class _ContainerOfSliderState extends State<ContainerOfSlider> {
  double height = 120;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.grey[400]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "HEIGHT",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${height.round()}",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "cm",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Slider(
              value: height,
              onChanged: (value) {
                setState(() {
                  height = value;
                });
              },
              max: 220,
              min: 80,
            )
          ],
        ),
      ),
    );
  }
}
