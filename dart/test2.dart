import 'dart:io';

void main() {
  while (true) {
    try {
      print("Введите число");
      int number = int.parse(stdin.readLineSync()!);
      print("Ваше число $number");
    } catch (_) {
      print("Это не число");
    }
  }
}
