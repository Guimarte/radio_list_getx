import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:radio_getx/home/home_page_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
    List<String> options = ['Opção 1', 'Opção 2', 'Opção 3'];
     HomeController homeController = Get.put(HomeController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView.builder(itemCount: options.length, itemBuilder: (context, index) {
    return Obx(
      () => Center(
        child: RadioListTile(
          title: Text(options[index]),
          value: options[index],
          groupValue: homeController.selectedValue.value,
          onChanged: (value) {
homeController.changeValue(value.toString());          print(value);
          },
        ),
      ),
    );
  }, ));
  }
}