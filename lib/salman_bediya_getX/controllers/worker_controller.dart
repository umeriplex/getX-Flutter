import 'package:get/get.dart';

class WorkerController extends GetxController{
  RxInt counter = 0.obs; //TODO obs means this variable is observable
  RxInt counter2 = 0.obs;

  RxString text = "".obs;

  void increment() => counter.value++;

  @override
  void onInit() {
    super.onInit();
    ever(counter, (callback) => print('Ever Called!')); //TODO (ever) bound with counter & give call-back whenever their is any change in count variable.
    everAll([counter,counter2], (callback) => print('Ever All Called!')); //TODO (everAll) bound with list of variables & give call-back whenever their is any change in any variable in the list.
    ever(counter, (callback) => print('Once Called!')); //TODO (once) bound with counter & give call-back ONLY ONCE when their is any change in count variable.
    debounce(text, (callback) => print('Debounce Called! Call API Now!'),time: const Duration(seconds: 2)); //TODO (debounce) bound with text & give call-back after 2 second when we stop typing.
    interval(text, (callback) => print('Debounce Called! Call API Now!'),time: const Duration(seconds: 2)); //TODO (interval) bound with text & give call-back after every 2 second.
  }
}