import 'package:flutter/material.dart';

class ContainerOfAge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[400]),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "AGE",
              style: TextStyle(fontSize: 25),
            ),
            Text(
              "22",
              style: TextStyle(fontSize: 25),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {},
                  mini: true,
                  child: Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  mini: true,
                  child: Icon(Icons.add),
                )
              ],
            )
          ],
        ),
      ),
    )

    ;
  }
}
