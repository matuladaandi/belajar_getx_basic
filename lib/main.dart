import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/models/orang.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});
  var orang1 =
      Orang(nama: 'andi', umur: 23).obs; // mengubah class biasa menjadi obs

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
              'Nama saya ${orang1.value.nama}',
              style: const TextStyle(fontSize: 35),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            orang1.update(
              (modelkembalian) {
                orang1.value.nama = orang1.value.nama.toString().toUpperCase();
              },
            );
          },
        ),
      ),
    );
  }
}
