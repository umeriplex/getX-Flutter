import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/salman_bediya_getX/app_routing/routes_name.dart';
import 'package:getx_flutter/salman_bediya_getX/controllers/counter_controller.dart';
import 'package:getx_flutter/salman_bediya_getX/views/second_view.dart';

class InitialView extends StatelessWidget {
  final String title;
  InitialView({super.key,required this.title});

  CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Initial View',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ElevatedButton(
                onPressed: (){
                  Get.toNamed(RoutesName.secondPage); // TODO Named Routing
                 //Get.to(const SecondView()); // TODO Normal/Simple Routing
                 //Get.off(const SecondView()); // TODO Remove Existing Page and goto Provided Page (Simple Routing)
                 //Get.offNamed(RoutesName.secondPage); // TODO Remove Existing Page and goto Provided Page (Named Routing)
                 //Get.offAll(RoutesName.secondPage); // TODO Remove All Existing and Previous Pages and goto Provided Page
                 //Get.back(); // TODO Go Bake
                },
                child: const Text('Goto Second Page',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 20,),
            Obx(() {
                return Text('Counter Value : ${counterController.counter}',style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),);
              },),
            ElevatedButton(
              onPressed: (){
                Get.defaultDialog(
                  title: "GetX",
                  middleText: "I am GetX",
                  textConfirm: 'Yes',
                  textCancel: 'No',
                  confirmTextColor: Colors.white,
                  cancelTextColor: Colors.blue,
                  onCancel: (){Get.back();},
                  onConfirm: (){Get.back();}
                );
              },
              child: const Text('GetX Dialog ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Get.toNamed(RoutesName.translationsPage);
              },
              child: const Text('Translation View',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Get.toNamed(RoutesName.workerPage);
              },
              child: const Text('Worker View',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Get.toNamed(RoutesName.cartPage);
              },
              child: const Text('Cart View',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Get.toNamed(RoutesName.opacityPage);
              },
              child: const Text('Opacity and Moving',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Get.toNamed(RoutesName.favPage);
              },
              child: const Text('Favorites View',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
          //Get.delete<CounterController>();

        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
