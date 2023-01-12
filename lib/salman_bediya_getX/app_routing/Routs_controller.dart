import 'package:get/get.dart';
import 'package:getx_flutter/salman_bediya_getX/app_routing/routes_name.dart';
import 'package:getx_flutter/salman_bediya_getX/views/second_view.dart';

import '../views/inittial_view.dart';
import '../views/internationalization_view.dart';
import '../views/shpoing_cart_view.dart';
import '../views/worker_view.dart';

class RoutesController{
List<GetPage> getPages(){
  return[
    GetPage(name: RoutesName.initial, page: () => InitialView(title: 'Home View',)),
    GetPage(name: RoutesName.secondPage, page: () => const SecondView()),
    GetPage(name: RoutesName.workerPage, page: () => WorkerView()),
    GetPage(name: RoutesName.cartPage, page: () => ShoppingCart()),
    GetPage(name: RoutesName.translationsPage, page: () => InternationalizationView(title: 'title'.tr,)),
  ];
}
}