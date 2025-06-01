void runReportCard() {
  print('Report Card');

  List<double> marks = [];

  for (int i = 1; i <= 5; i++) {
    stdout.write('Enter mark for subject $i: ');
    double? mark = _readDouble();
    if (mark == null || mark < 0 || mark > 100) {
      print('Invalid mark. Please enter a value between 0 and 100.');
      i--;  // Repeat this iteration
      continue;
    }
    marks.add(mark);
  }

  double total = marks.reduce((a, b) => a + b);
  double average = total / marks.length;
  String grade = _getGrade(average);

  print('\nTotal Marks: ${total.toStringAsFixed(2)}');
  print('Average Marks: ${average.toStringAsFixed(2)}');
  print('Grade: $grade');
}

double? _readDouble() {
  String? input = stdin.readLineSync();
  if (input == null) return null;
  return double.tryParse(input);
}

String _getGrade(double average) {
  if (average >= 90) {
    return 'A';
  } else if (average >= 70) {
    return 'B';
  } else {
    return 'C';
  }
}