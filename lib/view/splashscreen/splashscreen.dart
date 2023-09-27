import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app_/view/homescreen/home.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BottomAppBar(
          child: InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const Home(),
              ));
            },
            child: Container(
              height: 50,
              color: Color.fromARGB(255, 250, 90, 46),
              child: const Center(
                child: Text(
                  "Lets Start",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Lottie.asset("assets/animation/Animation - 1695617116918.json"),
      )),
    );
  }
}
