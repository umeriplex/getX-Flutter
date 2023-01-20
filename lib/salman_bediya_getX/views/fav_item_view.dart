import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/fav_controller.dart';

class FavoritesView extends StatefulWidget {
  const FavoritesView({Key? key}) : super(key: key);

  @override
  State<FavoritesView> createState() => _FavoritesViewState();
}

class _FavoritesViewState extends State<FavoritesView> {

  FavController favController = Get.put(FavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites View'),
      ),
      body: ListView.builder(
        itemCount: favController.fruitsList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(favController.fruitsList[index]),
            trailing: Obx(() => favController.empList.contains(favController.fruitsList[index]) ? const Icon(Icons.favorite, color: Colors.red,) : const Icon(Icons.favorite_border, color: Colors.red,)),
            onTap: (){
              setState(() {

              });
              if(favController.empList.contains(favController.fruitsList[index].toString())){
                favController.empList.remove(favController.fruitsList[index]);
              }else{
                favController.empList.add(favController.fruitsList[index].toString());
              }
            },
          );
        },
      ),
    );
  }
}
