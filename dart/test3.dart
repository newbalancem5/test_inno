import 'dart:io';

void main() {
  while (true) {
    print("Введите число");
    final input = stdin.readLineSync()!;
    final list = [input].join(',').length;
    try {
      int number = int.parse(input);
      final result = [number].join(',').length;
      print("Длина массива: ${result}");
    } catch (_) {
      final String quit = 'exit';
      if (input == quit) {
        print("Пока");
        return;
      } else {
        print("Дина массива: $list");
        print("Это не число");
      }
    }
  }
}
