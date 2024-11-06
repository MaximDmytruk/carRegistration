import 'dart:io';
import 'hellpers.dart';

void main(List<String> arguments) {
  List<String> carsList = [];

  bool state = true;
  String? answerOptional;

  while (state) {
    print('Enter car number');

    answerOptional = stdin.readLineSync(); // Користувач вводить відповідь.
    String answerFromTerminal = fromNullableToString(answerOptional);

    answerFromTerminal = answerFromTerminal.toLowerCase();

    switch (answerFromTerminal) {
      case 'stop':
        state = stopApp(state);
      case 'list':
        print(carsList);
      case 'car':
      default:
        addCar(carsList, answerFromTerminal);
    }
  }
}

void addCar(List<String> carList, String carNumber) {
  carList.add(carNumber);
}

bool stopApp(bool state) {
  print('Parking close, good bye');
  state = false;
  return state;
}
