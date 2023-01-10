import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  var data;
  ScreenTwo({Key? key,this.data}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Get.arguments[0].toString()),
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
              child: const Text('Goto Back'),
            ),
          ],
        ),
      ),
    );
  }
}