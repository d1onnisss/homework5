import 'dart:io';

void main () {
  fourthTask();
}

void firstTask() {
  stdout.write("Введите число: ");

  int range = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  if (range <= 0) {
    print("Диапозон должен быть больше 0");
  }

  int sum = 0;
   for (int i = 0; i <= range; i++) {
    sum += i;
   }

   print(sum);
}

void secondTask() {
  stdout.write("Введите Ваш год: ");
  int year = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  if (year <= 0) {
    print("Ошибка. Попробуйте заново");
  }

  if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
    print("$year - високосный год");
  } else {
    print("$year - не високосный год");
  }
}

void thirdTask() {
  stdout.write("Введите Ваше число: ");
  String num = stdin.readLineSync() ?? "";
  int sum = 0;

  for (int i = 0; i < num.length; i++) {
    int? digit = int.tryParse(num[i]);
    if (digit != null) {
      sum += digit;
    }
  }

  print(sum);
}

void fourthTask() {
  stdout.write("Введите Ваше слово: ");
  String word = stdin.readLineSync() ?? "";
  
  word = word.replaceAll(" ", "").toLowerCase();
  
  String reverseWord = word.split('').reversed.join('');

  if (word == reverseWord) {
    print("True");
  } else {
    print("False");
  }
}


