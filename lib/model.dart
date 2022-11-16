import 'package:get/get.dart';

class model extends GetxController {
  // RxBool _value = false.obs;
  RxBool val1 = false.obs;
  RxBool val2 = false.obs;
  RxBool val3 = false.obs;
  RxInt f = 250.obs;
  RxInt s = 400.obs;
  RxInt t = 150.obs;
  RxInt answer = 0.obs;

  void first(bool v1) {
    val1.value = !val1.value;
  }

  void second(bool v2) {
    val2.value = !val2.value;
  }

  void third(bool v3) {
    val3.value = !val3.value;
  }

  void calculate() {
      
  }
}
