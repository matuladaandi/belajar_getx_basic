import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/counter_controller.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          child: GetX<CounterController>(
            init: CounterController(), // nama class CounterController()
            builder: (controller) => Text(
              'Data ${controller.counter.value}',
              style: const TextStyle(fontSize: 35),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.find<CounterController>().increment();
          },
        ),
      ),
    );
  }
}
