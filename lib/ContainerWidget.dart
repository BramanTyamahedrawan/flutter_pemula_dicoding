import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          // 1. container color
          child: Text(
            'Hi',
            style: TextStyle(fontSize: 40),
          ),
          color: Colors.blue,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
        ), // container color
        Padding(padding: EdgeInsets.all(7)),
        Container(
          // 2. container shape
          child: Text(
            'Hi',
            style: TextStyle(fontSize: 40),
          ),
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
        ), // container shape
        Padding(padding: EdgeInsets.all(7)),
        Container(
          // 3. container shadow
          child: Text('Hi', style: TextStyle(fontSize: 40)),
          decoration: BoxDecoration(
            color: Colors.red,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(3, 6),
                blurRadius: 10,
              ),
            ],
          ),
        ), // container shadow
        Padding(padding: EdgeInsets.all(7)),
        Container(
          // 4. container border
          child: Text(
            'Hi',
            style: TextStyle(fontSize: 40),
          ),
          decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(color: Colors.green, width: 3),
            borderRadius: BorderRadius.circular(10),
          ),
        ), // container border
      ],
    );
  }
}
