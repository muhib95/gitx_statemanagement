import 'package:counter_statemanagement/controller/counter_controller.dart';
import 'package:counter_statemanagement/views/result_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Obx(
              () => Text(
                controller.count.toString(),
                style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    onPressed: () {
                      controller.dicrement();
                    },
                    icon: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    )),
                IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    onPressed: () {
                      controller.increment();
                    },
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    )),

              ],
            ),

            ElevatedButton(onPressed: () {
              controller.count.value=0;
              

            }, child: Text('Reset')),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {

              Get.to(

                  ResultPage(),
              arguments: {
                'result':controller.count
              }
              );
           // Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage(),));

            }, child: Text('Results')),
          ],
        ),
      ),
    );
  }
}
