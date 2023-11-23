import 'package:get/get.dart';

class MyController extends GetxController {
  //  controller ini MyController akan di panggil di HomePage utk digunakan

  var count = 0.obs;

  var datas = 0.obs;

  void change() => count++;

  void reset() => count.value = 0;
  @override
  void onInit() {
    // ignore: avoid_print
    print('onInit');
    // Worker

    // ever(     // akan dijalakan print() ketika terjadi perubahan
    //   count, // jika terjadi perubahan pada count maka akan dijalakan suatu method/dll
    //   (_) => print('dijalankan'),
    // );

    // everAll(          // akan dijalakan print() ketika terjadi perubahan
    //   [count,datas],  // jika terjadi perubahan pada count atau salah satunya nantinya akan dijalanakan perubahan
    //   // ignore: avoid_print
    //   (_) => print('dijalankan all'),
    // );

    // once(      // jika terjadi perubahan hanya akan dijalankan 1x saja
    //   count,
    //   // ignore: avoid_print
    //   (_) => print("Jalakan 1x"),
    // );

    // debounce(
    //     count,     // ketika terjadi perubahan pada count, dalam 2 detik akan
    //                // di print begitu seterusnya dalam selang 2 detik,ketika tiap melakukan
    //                 // perubahan pada count

    //     // ignore: avoid_print
    //     (_) => print("Jalakan tiap 2 detik"),
    //     time: const Duration(seconds: 2));

    interval(
      count,  // ketika terjadi perubahan dicount akan jalankan print walau user tidak berhenti ketik
      // ignore: avoid_print
      (_) => print("Jalakan tiap 2 detik tanpa perduli user sudah berhenti ketik?"),
      time: const Duration(seconds: 2),
    );

    super.onInit();
  }
}
