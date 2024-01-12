import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_nasa/main.dart';

void main() {
  testWidgets('Test Text Widget', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('COUNTER'), findsOneWidget);
    expect(find.text('Dec'), findsOneWidget);
    expect(find.text('Kurang'), findsNothing);
    expect(find.text('0'), findsOneWidget);
    expect(find.text('Inc'), findsOneWidget);
    expect(find.text('Tambah'), findsNothing);
    expect(find.text('REVERSE TEXT'), findsOneWidget);
    expect(find.text('Reverse'), findsOneWidget);
  });

  testWidgets('Test Counter', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('0'), findsOneWidget);
    await tester.tap(find.byKey(Key('btnInc')));
    await tester.pump();
    expect(find.text('1'), findsOneWidget);
    await tester.tap(find.widgetWithText(ElevatedButton, 'Dec'));
    await tester.tap(find.widgetWithText(ElevatedButton, 'Dec'));
    await tester.pump();
    expect(find.text('1'), findsNothing);
    expect(find.text('-1'), findsOneWidget);
  });

  testWidgets('Test Reverse Text', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.byType(TextField), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'Back End Flutter');
    await tester.tap(find.widgetWithText(ElevatedButton, 'Reverse'));
    await tester.pump();
    expect(find.text('rettulF dnE kcaB'), findsOneWidget);
  });

  testWidgets('Test Checkbox', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.tap(find.byType(Checkbox));
    await tester.pump();
    expect(find.byType(Checkbox), findsOneWidget);
  });

  testWidgets('Test Switch Widget', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.byType(Switch), findsOneWidget);
    Switch switchWidget = tester.widget(find.byType(Switch));
    expect(switchWidget.value, isFalse);
    await tester.tap(find.byType(Switch));
    await tester.pump();
    switchWidget = tester.widget(find.byType(Switch));
    expect(switchWidget.value, isTrue);
  });

  testWidgets('Test Slider Widget', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.byType(Slider), findsOneWidget);
    Slider sliderWidget = tester.widget(find.byType(Slider));
    expect(sliderWidget.value, 0.0);
    await tester.drag(find.byType(Slider), const Offset(100, 0));
    await tester.pump();
    sliderWidget = tester.widget(find.byType(Slider));
    expect(sliderWidget.value, greaterThan(0.0));
  });
  // testWidgets('Test DropdownButton Widget', (WidgetTester tester) async {
  //   await tester.pumpWidget(const MyApp());
  //   expect(find.byType(DropdownButton), findsOneWidget);
  //   await tester.tap(find.byType(DropdownButton));
  //   await tester.pump();
  //   await tester.tap(find.text('Option 2'));
  //   await tester.pump();
  //   expect(find.text('Option 2'), findsOneWidget);
  // // });
  // testWidgets('Test DropdownButton Widget', (WidgetTester tester) async {
  //   await tester.pumpWidget(const MyApp());
  //   expect(find.byType(DropdownButton), findsOneWidget);
  //   await tester.pump();
  //   await tester.tap(find.byType(DropdownButton));
  //   await tester.pump();
  //   await tester.tap(find.text('Option 2'));
  //   await tester.pump();
  //   expect(find.text('Option 2'), findsOneWidget);
  // });
}
