import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InternationalizationView extends StatefulWidget {
  final String title;

  const InternationalizationView({Key? key, required this.title})
      : super(key: key);

  @override
  State<InternationalizationView> createState() =>
      _InternationalizationViewState();
}

class _InternationalizationViewState extends State<InternationalizationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'sen_1'.tr,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeLanguage,
        tooltip: "Translation",
        child: const Icon(Icons.translate_rounded),
      ),
    );
  }

  void _changeLanguage() {
    Get.updateLocale(const Locale("ur","PK"));
  }
}
