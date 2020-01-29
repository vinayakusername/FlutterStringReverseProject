import 'package:flutter_test/flutter_test.dart';

import '../lib/main.dart';

void main(){
  test("String Should be Reversed", (){

    String inputString = 'Hello World';
    String reversedString = reverseString(inputString);
    expect(reversedString, 'dlroW olleH');
  });

   test("Input is Nummber", (){

    String inputString = '123456789';
    String reversedString = reverseString(inputString);
    expect(reversedString, 'Enter Valid String...');
  });

   test("Input is Null", (){

    String inputString = '';
    String reversedString = reverseString(inputString);
    expect(reversedString, 'Enter Some String,Input is Null...');
  });

   test("String Length is short", (){

    String inputString = 'i';
    String reversedString = reverseString(inputString);
    expect(reversedString, 'inputString Length is Short...');
  });
  
}