import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var displayValue = '0'.obs;
  var firstValue = '0'.obs;
  var secondValue = '0'.obs;
  var operator = ''.obs;

  void onButtonPressed(String buttonText) {
    if (buttonText == 'C') {
      clearDisplayValue();
    } else if (buttonText == '.' && !displayValue.value.contains('.')) {
      displayValue.value += buttonText;
    } else if (buttonText == '+' ||
        buttonText == '-' ||
        buttonText == '*' ||
        buttonText == '/') {
      if (firstValue.value == '0') {
        firstValue.value = displayValue.value;
        operator.value = buttonText;
        displayValue.value = '0';
      } else {
        calculate();
        operator.value = buttonText;
      }
    } else {
      if (displayValue.value == '0') {
        displayValue.value = buttonText;
      } else {
        displayValue.value += buttonText;
      }
    }
  }

  void clearDisplayValue() {
    displayValue.value = '0';
    firstValue.value = '0';
    secondValue.value = '0';
    operator.value = '';
  }

  void calculate() {
    double num1 = double.parse(firstValue.value);
    double num2 = double.parse(displayValue.value);
    switch (operator.value) {
      case '+':
        displayValue.value = (num1 + num2).toString();
        break;
      case '-':
        displayValue.value = (num1 - num2).toString();
        break;
      case '*':
        displayValue.value = (num1 * num2).toString();
        break;
      case '/':
        displayValue.value = (num1 / num2).toString();
        break;
    }
    firstValue.value = '0';
    secondValue.value = '0';
  }
}
