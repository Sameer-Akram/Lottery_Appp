import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int winning_num = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lottery App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
                child: Text(
              'Lottery Winning Number is 7',
            )),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 220,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: winning_num == 7
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.done,
                            color: Colors.green,
                            size: 35,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Congratulations You Won the Lottery, your Number is $winning_num ',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 35,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Better Luck next time your Number is $winning_num \nTry Again',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            winning_num = random.nextInt(10);
            setState(() {});
          },
          child: const Icon(Icons.refresh_outlined),
        ),
      ),
    );
  }
}
