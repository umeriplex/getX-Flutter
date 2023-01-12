import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/worker_controller.dart';


class WorkerView extends StatelessWidget {
  WorkerController workerController = Get.put(WorkerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Workers"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                workerController.increment();
              },
              child: Obx(() {
                  return Text(workerController.counter.value.toString());
                }
              ),

            ),
          ),
          TextField(
            onChanged: (value){
              workerController.text.value = value;
            },
          ),
        ],
      ),
    );
  }
}
