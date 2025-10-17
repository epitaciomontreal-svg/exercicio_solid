import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:exercicio_flutter/main.dart';

void main() {
  group('MyHomePage Widget Tests', () {
    testWidgets('Test incremental até 10', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: MyHomePage(title: 'Test')),
      );

      for (var i = 0; i < 10; i++) {
        await tester.tap(find.byIcon(Icons.add));
        await tester.pump();
      }
      expect(find.text('10'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.clear));
      await tester.pump();
      expect(find.text('0'), findsOneWidget);
    });

    testWidgets('Test incremental acima de 10', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: MyHomePage(title: 'Test')),
      );

      for (var i = 0; i < 11; i++) {
        await tester.tap(find.byIcon(Icons.add));
        await tester.pump();
      }
      expect(find.text('12'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.clear));
      await tester.pump();
      expect(find.text('0'), findsOneWidget);
    });
  });
}
