import 'package:get/get.dart';

class OpacityController extends GetxController {
  RxDouble opacity = 0.5.obs;


  void changeOpacity(double value) {
    opacity.value = value;
  }
}