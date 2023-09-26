
void main() {
  String encodedString =
      "8757%TLSNRTI%TYSFX%YXJK[JI%YF%^YWFU%JPFP%JMY%SNTO";
  
  String reversedString = encodedString.split('').reversed.join();


  String decodedString = '';
  for (int i = 0; i < reversedString.length; i++) {
    if (reversedString[i] == '%') {

      decodedString += reversedString[i];
      continue;
    }
    int asciiValue = reversedString.codeUnitAt(i) - 5;
    decodedString += String.fromCharCode(asciiValue);
  }


  print(decodedString.replaceAll('%',' '));
}