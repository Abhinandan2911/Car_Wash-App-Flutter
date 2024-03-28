// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  _SliderExampleState createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double _sliderValue = 0.0;
  final int _divisions = 2; // Set the number of divisions here (3 in this case)

  void _onSliderChanged(double value) {
    setState(() {
      _sliderValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            transformAlignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(),
              image: const DecorationImage(
                  image: AssetImage("assets/img/washing.jpg"),
                  fit: BoxFit.cover),
              color: Colors.lightBlue,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            margin: const EdgeInsets.fromLTRB(50, 32, 30, 10),
            width: 300,
            height: 200,
            alignment: Alignment.bottomLeft,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 32, 30, 10),
            child: const Text(
              "Job Progress",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 30, 10),
            child: const Text(
              "Job Progress",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 30, 10),
            child: Slider(
              value: _sliderValue,
              min: 0,
              max: 2,
              divisions: _divisions,
              onChanged: _onSliderChanged,
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 30, 10),
            child: const Text(
              "Order Details",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(80, 10, 30, 10),
            child: const Text(
              "Your Work is Completed Soon",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(170, 10, 30, 10),
            child: ElevatedButton(
              onPressed: () {
                SystemNavigator.pop();
              },
              child: const Text("Exit"),
            ),
          ),
        ],
      ),
    );
  }
}
