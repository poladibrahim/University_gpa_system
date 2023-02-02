import 'dart:io';

void main() {
  bool checkScore(num grade) {
    if (grade > 20 || grade < 0) {
      print("Error!!! it should be in range 0-20");
      return false;
    } else {
      return true;
    }
  }

  void checking(num subjectavergae) {
    if (subjectavergae >= 13.5) {
      print("Your grade is A");
    } else if (subjectavergae >= 12.5 && subjectavergae < 13.5) {
      print("Your grade is B");
    } else if (subjectavergae >= 11.5 && subjectavergae < 12.5) {
      print("Your grade is C");
    } else if (subjectavergae >= 10.5 && subjectavergae < 11.5) {
      print("Your grade is D");
    } else if (subjectavergae >= 10 && subjectavergae < 10.5) {
      print("Your grade is E");
    } else {
      print("Your grade is F\n You fail in this subject");
    }
  }

  print("enter Your id");
  String? studentId = stdin.readLineSync();
  print("enter password");
  String? code = stdin.readLineSync();

  if (studentId == "221" && code == "1234") {
    print("successful");
  } else {
    print("wrong");
    print("do you want to try again? - [y/n]");
    String? cavab = stdin.readLineSync();
    if (cavab == "y") {
      main();
    } else {
      return;
    }
  }
  print("\n*************************\n");

  print("Bu proqram vasitesile siz gpa hesablaya bileceksiniz");
  print("Dersler: \n1.Fizika\n2.Riyaziyyat\n3.kimya");
  print("ballar 20 uzerinden hesablanacaq\n\nZehmet olmasa Fizika  final qiymetinizi daxil edin");
  num physicsFinal = int.parse(stdin.readLineSync()!);
  while (!checkScore(physicsFinal)) {
    print("Enter again: ");
    physicsFinal = int.parse(stdin.readLineSync()!);
  }

  print("Zehmet olmasa Riyaziyyat midterm ve final qiymetlernizi daxil edin");
  num mathMid = int.parse(stdin.readLineSync()!);
  num mathFinal = int.parse(stdin.readLineSync()!);
  while ((!checkScore(mathMid) || !checkScore(mathFinal))) {
    print("Enter again: ");
    mathMid = int.parse(stdin.readLineSync()!);
    mathFinal = int.parse(stdin.readLineSync()!);
  }

  print("Zehmet olmasa kimya midterm ve final qiymetlernizi daxil edin");
  num chemMid = int.parse(stdin.readLineSync()!);
  num chemFinal = int.parse(stdin.readLineSync()!);

  while ((!checkScore(chemMid) || !checkScore(chemFinal))) {
    print("Enter again: ");
    chemMid = int.parse(stdin.readLineSync()!);
    chemFinal = int.parse(stdin.readLineSync()!);
  }

  print("*************************");
  int mathCoefMid = 3;
  int mathCoefFinal = 4;
  int chemCoefMid = 2;
  int chemCoefFinal = 5;
  int physicsCoefFinal = 6;

  print("coefficients: \nmathMid- $mathCoefMid\nmathfinal-$mathCoefFinal");
  print("\nchemMid- $chemCoefMid\nchemfinal-$chemCoefFinal");
  print("\nphysicsFinal-$physicsCoefFinal\n\n\n");

  num mathAverageCoef = mathCoefMid * mathMid / 20 + mathCoefFinal * mathFinal / 20;
  num mathAverage = mathAverageCoef * 20 / (mathCoefMid + mathCoefFinal);
  print("Your math average is ${mathAverage.toStringAsFixed(2)}");
  checking(mathAverage);
  // if (mathAverageCoef < (mathCoefMid + mathCoefFinal) / 2) {
  //   print("You fail - math");
  // } else {
  //   print("You pass - math");
  // }
  print("\n*************************\n");

  num physicsAverage = physicsFinal;
  num physicsAverageCoef = physicsCoefFinal * physicsFinal / 20;
  print("Your physics average is ${physicsAverage.toStringAsFixed(2)}");
  checking(physicsAverage);
  print("\n*************************\n");

  num chemAverageCoef = chemCoefMid * chemMid / 20 + chemCoefFinal * chemFinal / 20;
  num chemAverage = chemAverageCoef * 20 / (chemCoefMid + chemCoefFinal);
  checking(chemAverage);
  print("Your physics average is ${chemAverage.toStringAsFixed(2)}");
  print("\n*************************\n");

  num totalAverage = chemAverageCoef + mathAverageCoef + physicsAverageCoef;
  if (totalAverage > 10) {
    print("congratulations                your total average is ${totalAverage.toStringAsFixed(2)}");
  } else {
    print("you fail, your total average is ${totalAverage.toStringAsFixed(2)}, you should work hard");
  }
}
