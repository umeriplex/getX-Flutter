import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeDarkNight extends StatefulWidget {
  const ThemeDarkNight({Key? key}) : super(key: key);

  @override
  State<ThemeDarkNight> createState() => _ThemeDarkNightState();
}

class _ThemeDarkNightState extends State<ThemeDarkNight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX ZindaBaad'),
        centerTitle: true,
      ),
      body: Column(
        children:  [
          Card(
            elevation: 6,
            margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: ListTile(
              title: const Text('Umer Iftikhar'),
              subtitle: const Text('Software Engineer'),
              onTap: (){
                Get.defaultDialog(
                    title: 'Umer Iftikhar',
                    middleText: 'Software Engineer',
                  confirm: TextButton(onPressed: (){Get.back();}, child: const Text('OK')),
                  cancel: TextButton(onPressed: (){Get.back();}, child: const Text('Cancel')),
                );
              },
            ),
          ),
          Card(
            elevation: 6,
            margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: ListTile(
              title: const Text('Umer Iftikhar'),
              subtitle: const Text('Software Engineer'),
              onTap: (){
                Get.bottomSheet(
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30),)
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.light_mode),
                          title: const Text('Light Theme'),
                          onTap: (){
                            Get.changeTheme( ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.dark_mode),
                          title: const Text('Dark Theme'),
                          onTap: (){
                            Get.changeTheme( ThemeData.dark());
                            print('Dark');
                          },
                        ),
                      ],
                    ),
                  )
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
