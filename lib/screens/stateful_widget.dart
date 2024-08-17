import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
//import 'package:logger/logger.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  bool isProfileLocked = false;
  bool isChecked = false;
  double brightness = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Switch(
              value: isProfileLocked,
              onChanged: (value) {
                setState(() {
                  isProfileLocked = !isProfileLocked;
                });
              }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = !isChecked;
                  });
                }),
                const Text("Accept")
          ]),
          Text("Brightness : $brightness"),
          Slider(min:0 ,max: 50,value: brightness, onChanged: (value){
            setState(() {
              brightness = value;
            });
          })
        ]),
      ),
    );
  }
}
