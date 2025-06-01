import "dart:io"
void runBMICalculator() {
  print('BMI Calculator');

  stdout.write('Enter your weight in kilograms: ');
  double? weightKg = _readDouble();
  if (weightKg == null || weightKg <= 0) {
    print('Invalid weight input. Please enter a positive number.');
    return;
  }

  stdout.write('Enter your height in centimeters: ');
  double? heightCm = _readDouble();
  if (heightCm == null || heightCm <= 0) {
    print('Invalid height input. Please enter a positive number.');
    return;
  }

  double heightM = heightCm / 100;
  double bmi = weightKg / (heightM * heightM);

  print('Your BMI is ${bmi.toStringAsFixed(2)}');
  print('Category: ${_bmiCategory(bmi)}');
}

double? _readDouble() {
  String? input = stdin.readLineSync();
  if (input == null) return null;
  return double.tryParse(input);
}

String _bmiCategory(double bmi) {
  if (bmi < 18.5) {
    return 'Underweight';
  } else if (bmi >= 18.5 && bmi < 25) {
    return 'Normal weight';
  } else if (bmi >= 25 && bmi < 30) {
    return 'Overweight';
  } else {
    return 'Obesity';
  }
}
