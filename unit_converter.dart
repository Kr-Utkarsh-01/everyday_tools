import "dart:io"
void runUnitConverter() {
  while (true) {
    print('Unit Converter');
    print('1. Kilometers to Miles');
    print('2. Miles to Kilometers');
    print('3. Celsius to Fahrenheit');
    print('4. Fahrenheit to Celsius');
    print('5. Kilograms to Pounds');
    print('6. Pounds to Kilograms');
    print('7. Back to Main Menu');
    stdout.write('Choose a conversion type: ');
    String? input = stdin.readLineSync();

    switch (input) {
      case '1':
        convertKmToMi();
        break;
      case '2':
        convertMiToKm();
        break;
      case '3':
        convertCToF();
        break;
      case '4':
        convertFToC();
        break;
      case '5':
        convertKgToLb();
        break;
      case '6':
        convertLbToKg();
        break;
      case '7':
        return; // Go back to the main menu
      default:
        print('Invalid option');
    }
  }
}

void convertKmToMi() {
  stdout.write('Enter kilometers: ');
  double km = double.parse(stdin.readLineSync()!);
  double miles = km * 0.621371;
  print('$km kilometers is equal to $miles miles.');
}

void convertMiToKm() {
  stdout.write('Enter miles: ');
  double mi = double.parse(stdin.readLineSync()!);
  double kilometers = mi / 0.621371;
  print('$mi miles is equal to $kilometers kilometers.');
}

void convertCToF() {
  stdout.write('Enter Celsius: ');
  double celsius = double.parse(stdin.readLineSync()!);
  double fahrenheit = (celsius * 9/5) + 32;
  print('$celsius °C is equal to $fahrenheit °F.');
}

void convertFToC() {
  stdout.write('Enter Fahrenheit: ');
  double fahrenheit = double.parse(stdin.readLineSync()!);
  double celsius = (fahrenheit - 32) * 5/9;
  print('$fahrenheit °F is equal to $celsius °C.');
}

void convertKgToLb() {
  stdout.write('Enter kilograms: ');
  double kg = double.parse(stdin.readLineSync()!);
  double pounds = kg * 2.20462;
  print('$kg kg is equal to $pounds lb.');
}

void convertLbToKg() {
  stdout.write('Enter pounds: ');
  double lb = double.parse(stdin.readLineSync()!);
  double kilograms = lb / 2.20462;
  print('$lb lb is equal to $kilograms kg.');
}
