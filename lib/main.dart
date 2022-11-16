import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'model.dart';

void main()
{
  runApp(GetMaterialApp(home: first(),));
}
class first extends StatelessWidget {
  model m = Get.put(model());

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
         Obx(() =>  CheckboxListTile(
           title: const Text('Burger'),
           // subtitle: const Text('A computer science portal for geeks.'),
           // secondary: const Icon(Icons.code),
           autofocus: false,
           activeColor: Colors.green,
           checkColor: Colors.white,
           // selected: m.,
           value: m.val1.value,
           onChanged: (value) {
             m.first(value!);
           },
         ),),
         Obx(() =>  CheckboxListTile(
           title: const Text('Pizza'),
           // subtitle: const Text('A computer science portal for geeks.'),
           // secondary: const Icon(Icons.code),
           autofocus: false,
           activeColor: Colors.green,
           checkColor: Colors.white,
           // selected: _value,
           value: m.val2.value,
           onChanged: (value) {
             m.second(value!);
           },
         ),),
          Obx(() => CheckboxListTile(
            title: const Text('Pasta'),
            // subtitle: const Text('A computer science portal for geeks.'),
            // secondary: const Icon(Icons.code),
            autofocus: false,
            activeColor: Colors.green,
            checkColor: Colors.white,
            // selected: _value,
            value: m.val3.value,
            onChanged: (value) {
              m.third(value!);
            },
          ),),
          ElevatedButton(onPressed: () {
                m.calculate();
          }, child: Text("Calculate")),

          Obx(() => Text("Sum=${m.answer}"),)
        ],
      ),
    );
  }
}
