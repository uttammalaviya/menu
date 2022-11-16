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
    if(val1.isTrue)
      {
        answer.value=answer.value+f.value;
      }
    else
      {
        answer.value=answer.value-f.value;
      }
  }

  void second(bool v2) {
    val2.value = !val2.value;
    if(val2.isTrue)
    {
      answer.value=answer.value+s.value;
    }
    else
    {
      answer.value=answer.value-s.value;
    }
  }

  void third(bool v3) {
    val3.value = !val3.value;
    if(val3.isTrue)
    {
      answer.value=answer.value+t.value;
    }
    else
    {
      answer.value=answer.value-t.value;
    }
  }


}
