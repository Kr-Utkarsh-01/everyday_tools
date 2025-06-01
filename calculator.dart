void runCalculator() {
  print('Calculator');
  stdout.write('Enter the first number: ');
  double? num1 = _readDouble();
  if (num1 == null) {
    print('Invalid input. Please enter a valid number.');
    return;
  }

  stdout.write('Enter an operator (+, -, x, ÷): ');
  String? operator = stdin.readLineSync();

  if (operator == null || !['+', '-', 'x', '÷'].contains(operator)) {
    print('Invalid operator. Please enter one of +, -, x, ÷.');
    return;
  }

  stdout.write('Enter the second number: ');
  double? num2 = _readDouble();
  if (num2 == null) {
    print('Invalid input. Please enter a valid number.');
    return;
  }

  double? result;
  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case 'x':
      result = num1 * num2;
      break;
    case '÷':
      if (num2 == 0) {
        print('Error: Division by zero is not allowed.');
        return;
      }
      result = num1 / num2;
      break;
  }

  print('Result: $num1 $operator $num2 = $result');
}

double? _readDouble() {
  String? input = stdin.readLineSync();
  if (input == null) return null;
  return double.tryParse(input);
}
