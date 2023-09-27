import 'package:flutter/material.dart';

class Containerconstant extends StatelessWidget {
  const Containerconstant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 60,
        width: 320,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(93, 223, 145, 202),
        ),
      ),
    );
  }
}
