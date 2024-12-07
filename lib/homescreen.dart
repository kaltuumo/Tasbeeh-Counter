import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  State<Homescreen> createState() => _HomeScreenStatae();
}

class _HomeScreenStatae extends State<Homescreen> {
  int count = 0;
  counter() {
    setState(() {
      count++;
    });
  }

  reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tasbeeh Counter',

          style: TextStyle(
            fontSize: 25,
            // fontWeight: FontWeight.bold,
            // letterSpacing: 1,
          ),
          //  TitleCenter: true,
        ),
        centerTitle: true,
        backgroundColor: Colors.teal.shade300,
      ),
      backgroundColor: Colors.teal.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.teal,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 5),
                      color: Colors.white.withOpacity(.5),
                      spreadRadius: 5,
                      blurRadius: 5,
                    )
                  ]),
              child: Center(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Text(
                    count.toString(),
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          // color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -40),
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 5),
                        color: Colors.white.withOpacity(.5),
                        spreadRadius: 5,
                        blurRadius: 5,
                      )
                    ]),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () => counter(),
                      style: ElevatedButton.styleFrom(
                        maximumSize: const Size(80, 80),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () => reset(),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.red,
                      ),
                      child: const Text('Reset'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
