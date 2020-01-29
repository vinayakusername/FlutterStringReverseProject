import 'package:flutter_test/flutter_test.dart';

import '../lib/main.dart';

void main(){
  test("String Should be Reversed", (){

    String inputString = 'Hello World';
    String reversedString = reverseString(inputString);
    expect(reversedString, 'dlroW olleH');
  });

   test("Enter Valid String...", (){

    String inputString = '123456789';
    String reversedString = reverseString(inputString);
    expect(reversedString, '987654321');
  });

   test("Enter Some String,Input is Null...", (){

    String inputString = '';
    String reversedString = reverseString(inputString);
    expect(reversedString, 'StringValue');
  });

   test("String Length is short", (){

    String inputString = 'i';
    String reversedString = reverseString(inputString);
    expect(reversedString, 'i');
  });
  
}