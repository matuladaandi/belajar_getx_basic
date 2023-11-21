import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/orang_controller.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  var orangC = Get.put(OrangController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Learning Getx'),
          centerTitle: true,
        ),
        body: Center(
          child: Obx(
            () => Text(
              'Nama saya ${orangC.orangInstanceController.nama}',
              style: const TextStyle(fontSize: 35),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          orangC.changeUpperCase();
        },),
      ),
    );
  }
}
