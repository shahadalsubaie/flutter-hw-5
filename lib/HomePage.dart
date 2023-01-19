import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0;
  Color hartC = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 189, 159, 176),
        body: SafeArea(
            child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '$count',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 100, color: Color.fromARGB(255, 245, 246, 246)),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 200, 212, 204),
                  ),
                  onPressed: () {
                    count++;
                    setState(() {});
                  },
                  child: const Text(
                    'سبح',
                    style: TextStyle(fontSize: 80),
                  )),
              InkWell(
                onTap: () {
                  setState(() {
                    if (hartC == Colors.white) {
                      hartC = Colors.red;
                    } else {
                      hartC = Colors.white;
                    }
                  });
                },
                child: Icon(
                  Icons.favorite,
                  size: 80,
                  color: hartC, //ff
                ),
              )
            ],
          ),
        )));
  }
}
