import 'dart:io';
import 'hellpers.dart';

// for start: dart run main.dart
void main(List<String> arguments) {
  Map<String, String> carsList = {};
  print('start 2');

  bool state = true;
  String? answerNumberOptional;
  String? answerOwnerOptional;

  while (state) {
    print('Enter car number');

    answerNumberOptional =
        stdin.readLineSync(); // Користувач вводить відповідь.
    String answer = fromNullableToString(answerNumberOptional);

    answer = answer.toLowerCase();

    switch (answer) {
      case 'stop':
        state = stopApp(state);
      case 'list':
        print(carsList);
      case 'car':
        for (var key in carsList.keys) {
          print('Number of car: $key');
        }
      case 'owner':
        for (var value in carsList.values) {
          print('Owner of car: $value');
        }
      default:
        print('Enter Owner:');
        answerOwnerOptional = stdin.readLineSync();
        String answerOwner = fromNullableToString(answerOwnerOptional);
        addCar(carsList, answer, answerOwner);
    }
  }
}

void addCar(Map<String, String> carList, String carNumber, String owner) {
  carList[carNumber] = owner;
}

bool stopApp(bool state) {
  print('Parking close, good bye');
  state = false;
  return state;
}
