import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/calculator_controller.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final calculatorController = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text(
            calculatorController.displayValue.value,
            style: const TextStyle(fontSize: 50),
          )),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton('7'),
              buildButton('8'),
              buildButton('9'),
              buildButton('/'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton('4'),
              buildButton('5'),
              buildButton('6'),
              buildButton('*'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton('1'),
              buildButton('2'),
              buildButton('3'),
              buildButton('-'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton('.'),
              buildButton('0'),
              buildButton('C'),
              buildButton('+'),
            ],
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => calculatorController.calculate(),
            child: const Text('Calculate')
          ),
        ],
      ),
    );
  }

  Widget buildButton(String buttonText) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () => calculatorController.onButtonPressed(buttonText),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[700],
          padding: const EdgeInsets.all(16),
          textStyle: const TextStyle(fontSize: 20),
        ),
        child: Text(buttonText),
      ),
    );
  }
}
