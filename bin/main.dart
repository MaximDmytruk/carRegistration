import 'dart:io';
import 'hellpers.dart';

// for start: dart run main.dart
void main(List<String> arguments) {
  List<String> carsList = [];

  bool state = true;
  String? answerOptional;

  while (state) {
    print('Enter car number');

    answerOptional = stdin.readLineSync(); // Користувач вводить відповідь.
    String answer = fromNullableToString(answerOptional);

    answer = answer.toLowerCase();

    switch (answer) {
      case 'stop':
        state = stopApp(state);
      case 'list':
        print(carsList);
      case 'car':
      default:
        addCar(carsList, answer);
    }
  }
}

void addCar(List<String> carList, String carNumber) {
  print("Enter index of place");
  String? answerOptional;
  answerOptional = stdin.readLineSync(); // Користувач вводить відповідь.
  int answerInt = fromNullableToInt(answerOptional);
  if (answerInt < carList.length) {
    carList.insert(answerInt, carNumber);
  } else {
    carList.add(carNumber);
  }
}

bool stopApp(bool state) {
  print('Parking close, good bye');
  state = false;
  return state;
}
