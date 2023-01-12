import 'package:get/get.dart';

import '../modals/products.dart';

class CartController extends GetxController{
  RxList<Product> products = List<Product>.empty().obs;

  void addProduct(Product product){
    products.add(product);
    products.last.increaseQuantity();
  }
  void removeProduct(Product product){
    product.decreaseQuantity();
    products.remove(product);
  }
  void clearList(){
    products.clear();
  }
  void increaseQuantity(Product product){
    if(products.contains(product)){
      products.firstWhere((element) => element == product).increaseQuantity();
    }else{
      addProduct(product);
    }
    products.refresh();
  }

  void decreaseQuantity(Product product){
    if(products.contains(product)){
      products.firstWhere((element) => element == product).decreaseQuantity();
    }else{
      removeProduct(product);
    }
    products.refresh();
  }

  int? getQuantity(Product product){
    if(products.contains(product)){
      return products.firstWhere((element) => element.id == product.id).quantity;
    }else{
      return 0;
    }
  }


}