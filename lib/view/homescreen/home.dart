import 'package:flutter/material.dart';
import 'package:quiz_app_/utils/database/database.dart';
import 'package:quiz_app_/view/homescreen/result.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

int questionNumber = 0;
int? value;
int count = 0;
int Qcount = 0;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.pexels.com/photos/2088170/pexels-photo-2088170.jpeg?auto=compress&cs=tinysrgb&w=600"),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 201,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(93, 223, 145, 202),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      Database.data[questionNumber]['question'],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        value = index;
                        value == Database.data[questionNumber]['answer']
                            ? count++
                            : print(value);
                      });
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: value == index
                            ? value == Database.data[questionNumber]['answer']
                                ? Colors.green
                                : Colors.red
                            : Color.fromARGB(93, 223, 145, 202),
                      ),
                      child: Center(
                        child: Text(
                          Database.data[questionNumber]['options'][index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: InkWell(
                onTap: () {
                  setState(() {
                    questionNumber++;
                    value = 6;
                    Qcount++;

                    Qcount > 9
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Result(ans: count)))
                        : print("Not Done");
                  });
                },
                child: Container(
                  height: 60,
                  width: 318,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 9, 62, 106),
                  ),
                  child: Center(
                    child: Text(
                      "Next",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
