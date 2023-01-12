import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controllers/cart_controller.dart';
import '../modals/products.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {

  List<Product> products = List.generate(
      15,
      (index) => Product(
        id: index + 1,
        name: "Product $index",
        price: index *13,
        image: "https://picsum.photos/id/$index/200/300"
      )
  );
  CartController cc = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart GetX'),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1
          ),
          itemBuilder: (context,index){
            return Card(
              child: Column(
                children: [
                  Expanded(
                      child: Image.network(products[index].image.toString(),fit: BoxFit.cover,)
                  ),
                  Text(products[index].name.toString(),style: const TextStyle(fontSize: 24),),
                  Text(products[index].price.toString(),style: const TextStyle(fontSize: 18),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(onTap: (){cc.decreaseQuantity(products[index]);},child: const Icon(Icons.subtitles_off,color: Colors.blue,)),
                      Obx( () {
                          return Text("${cc.getQuantity(products[index])}",style: const TextStyle(fontSize: 16));
                        }
                      ),
                      InkWell(onTap: (){cc.increaseQuantity(products[index]);},child: const Icon(Icons.add_box,color: Colors.blue,)),
                    ],
                  )
                ],
              ),
            );
          }
      ),
    );
  }
}
