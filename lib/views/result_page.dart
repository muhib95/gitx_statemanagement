import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {

    final result=Get.arguments;
    print(result);
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Center(
        child: Text(
            "Result is: ${result['result'].toString()}"
        ),
      ),
    );
  }
}
