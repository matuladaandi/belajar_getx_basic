import 'package:get/get.dart';
import 'package:getx/models/orang.dart';

class OrangController extends GetxController {
  var orangInstanceController = Orang(); //  hasil import dari class Orang() yang ada  dimodel

  void changeUpperCase(){
    orangInstanceController.nama.value = orangInstanceController.nama.value.toUpperCase();
  }
}