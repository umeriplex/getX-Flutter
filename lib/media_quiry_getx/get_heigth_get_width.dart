import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetHeightGetWidth extends StatefulWidget {
  const GetHeightGetWidth({Key? key}) : super(key: key);

  @override
  State<GetHeightGetWidth> createState() => _GetHeightGetWidthState();
}

class _GetHeightGetWidthState extends State<GetHeightGetWidth> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('GetX Responsive'),
        centerTitle: true,
      ),
      body: Container(
        height: Get.height * .5,
        color: Colors.green,
        child: const Center(child: Text('Container')),
      ),
    );
  }
}
