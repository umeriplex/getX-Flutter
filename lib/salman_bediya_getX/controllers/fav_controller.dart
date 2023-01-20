import 'package:get/get.dart';

class FavController extends GetxController{
  // list of random fruits
  RxList<String> fruitsList = ['Apple', 'Banana', 'Orange', 'Mango', 'Pineapple', 'Grapes', 'Watermelon', 'Strawberry', 'Papaya', 'Kiwi', 'Cherry', 'Peach', 'Pear', 'Lemon', 'Pomegranate', 'Guava', 'Lychee', 'Jackfruit', 'Coconut', 'Plum'].obs;
  RxList empList = [].obs;

  addFruit(String fruit) {
    fruitsList.add(fruit);
  }
  removeFruit(String fruit) {
    fruitsList.remove(fruit);
  }

  @override
  void onInit() {
    super.onInit();
    ever(empList, (callback) => print('Kuch Huwa Hai !!')); //TODO (ever) bound with counter & give call-back whenever their is any change in count variable.
  }

}