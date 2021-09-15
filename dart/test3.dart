import 'dart:io';

void main() {
  while (true) {
    try {
      print("Введите число");
      int number = int.parse(stdin.readLineSync()!);
      final result = [number].join(',').length;
      print("Длина массива: ${result}");
      // print(list);
    } catch (_) {
      print("Ошибка");
    } finally {
      final String text = stdin.readLineSync()!;
      final String end = 'exit';
      if (text == end) {
        return;
      }
    }
  }
}
