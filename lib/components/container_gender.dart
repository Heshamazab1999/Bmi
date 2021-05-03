import 'package:flutter/material.dart';

class ContainerOfGender extends StatelessWidget {
  final String name;
  final String image;
  final Color color;
  final Function function;

  ContainerOfGender(
      {this.name, this.image, this.color = Colors.grey, this.function});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: function,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: color),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 40,
                child: Image(
                  image: AssetImage(image),
                  width: 90,
                  height: 90,
                  fit: BoxFit.contain,
                  filterQuality: FilterQuality.high,
                )),
            Text(
              name,
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
    ));
  }
}
