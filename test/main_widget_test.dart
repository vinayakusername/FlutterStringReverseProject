
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../lib/main.dart';

void main(){
 testWidgets('Reverse string widget test', (WidgetTester tester)
 async{
           
           await tester.pumpWidget(MyApp());//It is used to tell which widget we want to test.
           var textField = find.byType(TextField);//This statement is used to find the widgets
           expect(textField,findsOneWidget);
           await tester.enterText(textField, 'Hello');
           expect(find.text('Hello'), findsOneWidget);

           var button = find.text('Reverse');
           expect(button, findsOneWidget);
           await tester.tap(button);
           await tester.pump();
           expect(find.text("olleH"), findsOneWidget);
           //expect(find.text("olleH"), findsNothing);

      });
}