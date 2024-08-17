import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: 20,
          left: 50,
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.orange, borderRadius: BorderRadius.circular(20)),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: 150,
            height: 150,
            color: Colors.blue,
          ),
        ),
        
      ],
    ));
  }
}
