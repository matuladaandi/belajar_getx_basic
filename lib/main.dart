import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/counter_controller.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  final counterContrl = Get.put(CounterController());

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
              'Data ${counterContrl.counter}',
              style: const TextStyle(fontSize: 35),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counterContrl.increment();  
          },
        ),
      ),
    );
  }
}
