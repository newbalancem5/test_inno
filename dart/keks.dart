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
      // print(list);
    } catch (_) {
      final String quit = 'exit';
      if (input == quit) {
        return;
      } else {
        print("Дина массива: $list");
        print("Это не число");
      }
    }
  }
}
