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

  final counterCtrl = Get.put(CounterController());

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
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // simple GetBuilder()
            GetBuilder<CounterController>(
              id: "12",  // id bertipe object, Hnaya ada di GetBuilder()
              builder: (_) {
                return Text(
                  'Angka ${counterCtrl.counter}',
                  style: const TextStyle(fontSize: 35),
                );
              },
            ),
            GetBuilder<CounterController>(
              id: "13",
              builder: (_) {
                return Text(
                  'Angka ${counterCtrl.counter}',
                  style: const TextStyle(fontSize: 35),
                );
              },
            ),
            GetBuilder<CounterController>(
              id: "14",
              builder: (_) {
                return Text(
                  'Angka ${counterCtrl.counter}',
                  style: const TextStyle(fontSize: 35),
                );
              },
            ),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counterCtrl.increment();
          },
        ),
      ),
    );
  }
}
