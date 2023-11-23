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
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning Getx Life Cycle'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () => Get.to(
                    () => const TextPage(),
                  ),
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}

class TextPage extends StatelessWidget {
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textC = Get.put(TextController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Page'),
        centerTitle: true,
      ),
      body: TextField(
        controller: textC.myC,
      ),
    );
  }
}

class TextController extends GetxController {
  final myC = TextEditingController();
}
