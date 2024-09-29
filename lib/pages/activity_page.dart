import 'package:flutter/material.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow, // Set background color to yellow
      child: Center(
        child: Text(
          "Activity Page",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
