import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main(){

  group('Flutter ReverseString App Test',(){
    //creating instance of FlutterDriver.
    FlutterDriver driver;

    setUpAll(()async{
      //Connect to a Flutter Driver before any tests.
        driver = await FlutterDriver.connect();


    });


 // Close the connection to the driver after the tests have completed.
    tearDownAll(()async{
      if(driver!=null){
        driver.close();
      }
    });
     
     var textField = find.byType("TextField");
     var button = find.text("Reverse");
     var reverse = find.text("olleH");

     test('Reverse the String',()async{
         await driver.tap(textField);//this statement is used to tap on textField to enter the text.
         await Future.delayed(Duration(seconds:2));
         await driver.enterText("Hello");//this statement is used to enter the text in textField.
         await Future.delayed(Duration(seconds:2));
         await driver.waitForAbsent(reverse);//this holds for reverse string before tapping on button.
         await Future.delayed(Duration(seconds:2));
         await driver.tap(button);//this statement is used to test the tap action of button.
         await Future.delayed(Duration(seconds:2));
         await driver.waitFor(reverse);//It will wait to get reverse string.
         await driver.waitUntilNoTransientCallbacks();//below statement will tells that their are no callbacks.
         assert(reverse!=null);

     });
  });
}