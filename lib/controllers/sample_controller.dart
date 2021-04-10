import 'package:get/get.dart';

class SampleController extends GetxController {
  var count = 0.obs;
  increment() {
    count.value++;
  }
}
