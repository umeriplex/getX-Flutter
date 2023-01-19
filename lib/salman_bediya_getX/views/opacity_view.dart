import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/salman_bediya_getX/app_routing/routes_name.dart';
import 'package:getx_flutter/salman_bediya_getX/controllers/opacity_controller.dart';

class OpacityView extends StatefulWidget {
  const OpacityView({Key? key}) : super(key: key);

  @override
  State<OpacityView> createState() => _OpacityViewState();
}

class _OpacityViewState extends State<OpacityView> {

  final OpacityController _opacityController = Get.put(OpacityController());

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print('HEATHEN');
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Opacity'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Opacity'),
            const SizedBox(
              height: 20,
            ),
            // circle
            Obx(() {
              return AnimatedOpacity(
                opacity: _opacityController.opacity.value,
                duration: const Duration(seconds: 1),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),
              );
            }),
            const SizedBox(
              height: 20,
            ),
            Obx( () {
                return Slider(value: _opacityController.opacity.value, onChanged: (value){
                  _opacityController.changeOpacity(value);
                });
              }
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RoutesName.movingPage);
              },
              child: const Text('Goto Moving item Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
