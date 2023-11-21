import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './controllers/counter_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final switchThemeParent =
      Get.put(CounterController()); // switchTheme pertama / parent

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MaterialApp(
        theme: switchThemeParent.isDark.value
            ? ThemeData.dark()
            : ThemeData.light(), // kalau true maka thema dark
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // cara connect ke Controller CounterController,masukan nama classNya dan import(auto)
  final counterControllerID =
      Get.put(CounterController()); // membuat data CounterController

  final switchThemeChild = Get.find<
      CounterController>(); //switchThemeChild kedua / childnya dan menggunakannya

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning GetX'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'Angka ${counterControllerID.counter}', // counter berasal dari class CounterController
                style: const TextStyle(fontSize: 40),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
                onPressed: () => counterControllerID.increment(),
                child: const Icon(Icons.add)),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
                onPressed: () => counterControllerID.decrement(),
                child: const Icon(Icons.remove)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // ganti thema
        onPressed: () => switchThemeChild
            .changeTheme(), // mengambil method changeTheme yg berada di class CounterController
      ),
    );
  }
}
