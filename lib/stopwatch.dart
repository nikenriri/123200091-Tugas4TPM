import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StopwatchPage extends StatefulWidget {
  const StopwatchPage({Key? key}) : super(key: key);

  @override
  State<StopwatchPage> createState() => _StopwatchPageState();
}

class _StopwatchPageState extends State<StopwatchPage> {
  static const duration = Duration(seconds: 1);

  int secondsPassed = 0;
  bool isActive = false;

  Timer? timer;

  void handleTick() {
    if (isActive) {
      setState(() {
        secondsPassed = secondsPassed + 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (timer == null) {
      timer = Timer.periodic(duration, (Timer t) {
        handleTick();
      });
    }

    int sec = secondsPassed % 60;
    int min = secondsPassed ~/ 60;
    int hrs = secondsPassed ~/ (60 * 60);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Stopwatch'),
        backgroundColor: Colors.blue.shade200,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                LabelText(
                    label: 'HRS',
                    value: hrs.toString().padLeft(2, '0')),
                LabelText(
                    label: 'MIN',
                    value: min.toString().padLeft(2, '0')),
                LabelText(
                    label: 'SEC',
                    value: sec.toString().padLeft(2, '0')),
              ],
            ),
            SizedBox(height: 60),
            Container(
              width: 200,
              height: 47,
              margin: EdgeInsets.only(top: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // background color
                  foregroundColor: Colors.white, // text color
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)), // button border
                ),
                onPressed: () {
                  setState(() {
                    isActive = !isActive;
                  });
                },
                child: Text(isActive ? 'STOP' : 'START'),
              )
            )
          ],
        ),
      ),
    );
  }
}

class LabelText extends StatelessWidget {
  LabelText({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.blue.shade200,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            '$value',
            style: TextStyle(
                color: Colors.white, fontSize: 55, fontWeight: FontWeight.bold),
          ),
          Text(
            '$label',
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}
