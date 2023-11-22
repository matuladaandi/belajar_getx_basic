import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter =0;

  void increment(){
    counter++;
    update(["12","13"]); // hanya  id yg berada di ini [] yg bisa diupdate 
  }
}