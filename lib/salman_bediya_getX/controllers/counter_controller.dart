import 'dart:async';

import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 0.obs; //TODO obs means this variable is observable
  late Timer _timer;
  void increment() {
    counter.value++;
  }

  //TODO ::::::::::: Life Cycle ::::::::::::::

  @override //TODO it initialises during memory allocation
  void onInit() {
    super.onInit();
    print('O N - I N I T!!!!!');
  }

  @override //TODO runs during UI Rendering and just after memory allocation
  void onReady() {
    super.onReady();
    print('O N - R E A D Y!!!!!');
    // _timer = Timer.periodic(const Duration(microseconds: 100), (timer) {
    //   increment();
    // });
  }

  @override //TODO runs when we left/disconnected present view
  void onClose() {
    super.onClose();
    print('O N - D E L E T!!!!!');
  }
}
