import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/salman_bediya_getX/controllers/moving_controller.dart';

class MovingView extends StatefulWidget {
  const MovingView({Key? key}) : super(key: key);

  @override
  State<MovingView> createState() => _MovingViewState();
}

class _MovingViewState extends State<MovingView> {

  MovingController movingController = Get.put(MovingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Moving'),
      ),
      body: Stack(
        children: [
          Obx( () {
              return Positioned(
                top:movingController.top.value,
                left: movingController.top.value,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              );
            }
          ),
          Obx( () {
            return Slider(
              min: 1,
              max: 300,
                value: movingController.top.value,
                onChanged: (value){
              movingController.changeTop(value);
              print(movingController.top.value);
            });
          }
          ),
        ],
      ),
    );
  }
}
