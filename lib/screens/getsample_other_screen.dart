import 'package:flutter/material.dart';
import 'package:flutter_chitchat/controllers/sample_controller.dart';
import 'package:get/get.dart';

class GetsampleOtherScreen extends StatelessWidget {
  // Anda bisa meminta Get untuk menemukan kontroler yang digunakan di halaman lain dan redirect ke halaman itu.
  final SampleController c = Get.find();

  @override
  Widget build(context) {
    // Akses variabel `count` yang telah di update.
    return Scaffold(body: Center(child: Text("${c.count}")));
  }
}
