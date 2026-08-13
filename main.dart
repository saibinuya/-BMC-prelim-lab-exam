


import 'dart:io';


double getAverage(List<double> scoresList) {
      double totalSum = 0;
         for (double item in scoresList) {
             totalSum += item;
  }
  return totalSum / scoresList.length;
}

void main() {
  stdout.write('Enter student name: ');
  String nameInput = stdin.readLineSync() ?? '';

  int? ageVal;
  while (ageVal == null) {
             stdout.write('Enter age: ');
          String? rawText = stdin.readLineSync();
              ageVal = int.tryParse(rawText ?? '');

    if (ageVal == null) {
      print('Invalid age! Please enter a number.');
    }
  }


  List<double> myScores = [];

  for (int i = 1; i <= 3; i++) {
    double? tempScore;
          while (tempScore == null) {
           stdout.write('Enter quiz $i: ');
             String? rawText = stdin.readLineSync();
             tempScore = double.tryParse(rawText ?? '');

      if (tempScore == null) {
        print('Invalid score! Please enter a valid number.');
      }
    }
    myScores.add(tempScore);
  }


  double finalAverage = getAverage(myScores);
  String passStatus;
  String teacherRemark;

  if (finalAverage >= 75) {
       passStatus = 'Passed';
           teacherRemark = 'Good job, keep it up!';
  } else {
         passStatus = 'Failed';
        teacherRemark = 'Needs improvement. Don\'t give up!';
  }


        print('\nName: $nameInput');
        print('Age: $ageVal');
        print('Average: ${finalAverage.toStringAsFixed(2)}');
         print('Status: $passStatus');
           print('Remark: $teacherRemark');
}