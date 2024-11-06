String fromNullableToString(String? string) {
  if (string != null) {
    String newString = string;
    return newString;
  } else {
    return '-1';
  }
}
