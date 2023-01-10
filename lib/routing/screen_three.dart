import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen Three"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {

              },
              child: const Text('Goto Second Screen'),
            ),
            TextButton(
              onPressed: () {

              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}