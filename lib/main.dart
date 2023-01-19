import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/salman_bediya_getX/app_routing/Routs_controller.dart';
import 'package:getx_flutter/salman_bediya_getX/app_routing/routes_name.dart';import 'package:getx_flutter/salman_bediya_getX/translations/translations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //home: const GetHeightGetWidth(),
      translations: AppTranslations(),
      locale: const Locale("en","US"),
      initialRoute: RoutesName.opacityPage,
      getPages: RoutesController().getPages(),
      // getPages: [
      //   GetPage(name: '/', page: () => const GetHeightGetWidth()),
      //   GetPage(name: '/stwo', page: () => ScreenTwo()),
      //   GetPage(name: '/sthree', page: () => const ScreenThree()),
      // ],
    );
  }
}

