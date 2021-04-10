import 'package:flutter/material.dart';
import 'package:flutter_chitchat/controllers/sample_controller.dart';
import 'package:flutter_chitchat/screens/getsample_other_screen.dart';
import 'package:get/get.dart';

class GetSampleScreen extends StatelessWidget {
  static const String routeName = "getsample_screen";
  @override
  Widget build(BuildContext context) {
    // Instansiasi kelas anda menggunakan Get.put() untuk membuatnya tersedia untuk seluruh "child" route dibawahnya.
    final SampleController c = Get.put(SampleController());

    return Scaffold(
        // Gunakan Obx(() => ...) untuk mengupdate Text() ketika `count` berubah.
        appBar: AppBar(title: Obx(() => Text("Clicks: ${c.count}"))),

        // Ganti 8 baris Navigator.push menggunan Get.to() agar lebih sederhana. Anda tidak perlu `context`.
        body: Center(
            child: ElevatedButton(
                child: Text("Go to Other"),
                //onPressed: () => Get.to(GetsampleOtherScreen()))),
                onPressed: () => Get.to(() => GetsampleOtherScreen()))),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add), onPressed: c.increment));
  }
}
