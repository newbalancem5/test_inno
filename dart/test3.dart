import 'dart:io';

void main() {
  while (true) {
    try {
      print("Введите число");
      int number = int.parse(stdin.readLineSync()!);
      final list = [number];
      final result = list.join(',');
      final scorelenght = result.length;
      print("Длина массива: ${scorelenght}");
      // print(list);
    } on Exception catch (_) {
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
