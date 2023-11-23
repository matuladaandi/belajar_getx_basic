import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      home: HomePage(),
    );
  }
}

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  final countC = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning Getx Life Cycle'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const OtherPage(),
                    ),
                  ),
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: const Center(
        child: CountWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countC.add();
        },
      ),
    );
  }
}

class CountWidget extends StatelessWidget {
  const CountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterController>(
      // GetBuilder() pada GetX bisa melakukan/membuat apa yang dibuat menggunakan statefull
      initState: (state) => "",
      didChangeDependencies: (state) => "",
      didUpdateWidget: (oldWidget, state) => print('diUpdate'),
      dispose: (state) => print("dispose"),
      builder: (c) => Text(
        'Angka ${c.count}',
        style: const TextStyle(fontSize: 35),
      ),
    );
  }
}

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other Page'),
        centerTitle: true,
      ),
    );
  }
}

class TextController extends GetxController {}

class CounterController extends GetxController {
  var count = 0;

  void add() {
    count++;
    update();
  }
}
