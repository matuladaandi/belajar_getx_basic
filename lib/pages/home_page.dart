import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/my_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final myC = Get.put(MyController()); // memamggil MyController ukt digunakan

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Workers'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              myC.reset();
            },
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'Terjadi Sesuatu : ${myC.count}', // setiap terjadi perubahan akan terhitung
                style: const TextStyle(fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              onChanged: (_) => myC.change(),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            )
          ],
        )),
      ),
    );
  }
}
