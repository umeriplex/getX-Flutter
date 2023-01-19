import 'package:get/get.dart';

class MovingController extends GetxController {
  RxDouble left = 1.0.obs;
  RxDouble top = 1.0.obs;

  void changeLeft(double value) {
    left.value = value;
  }

  void changeTop(double value) {
    top.value = value;
  }
}

