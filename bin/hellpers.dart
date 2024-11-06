String fromNullableToString(String? string) {
  if (string != null) {
    String newString = string;
    return newString;
  } else {
    return '-1';
  }
}

int fromNullableToInt(String? string) {
  if (string != null) {
    int? a = int.tryParse(string);
    if (a != null) {
      int number = a;
      return number;
    } else
      return -1;
  } else {
    return -1;
  }
}
