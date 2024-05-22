String convertNumbertToUniCode(int number) {
  // Adjust the base Unicode value (0xE900) as necessary
  int baseUnicode = 0xE900;
  return String.fromCharCode(baseUnicode + number);
}
