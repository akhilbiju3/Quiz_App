import 'package:flutter/material.dart';
import 'package:quiz_app_/view/homescreen/home.dart';

class Result extends StatelessWidget {
  const Result({super.key, required this.ans});
  final int ans;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.pexels.com/photos/2088170/pexels-photo-2088170.jpeg?auto=compress&cs=tinysrgb&w=600"),
                fit: BoxFit.fitHeight)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Result",
              style: TextStyle(
                  fontSize: 30, color: Colors.red, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "Total Marks =${ans}/$questionNumber",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => Home(),
                ));
              },
              child: Text("Restart"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(93, 166, 41, 133),
              ),
            )
          ],
        ),
      ),
    );
  }
}
