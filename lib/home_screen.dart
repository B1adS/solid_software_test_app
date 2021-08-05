import 'dart:math';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const route = "/homeScreen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _random = Random();
  Color color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _changeColor();
      },
      child: Scaffold(
        backgroundColor: color,
        body: SizedBox.expand(
          child: Container(
            child: Center(
              child: Text("Hey there"),
            ),
          ),
        ),
      ),
    );
  }

  void _changeColor() {
    setState(
      () {
        color = Color.fromRGBO(_random.nextInt(256), _random.nextInt(256),
            _random.nextInt(256), 1);
      },
    );
  }
}
