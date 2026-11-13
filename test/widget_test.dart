import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:example/pages/dashboard.dart/dashboard.dart';

late Directory hiveTestDirectory;

void main() {
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    hiveTestDirectory = await Directory.systemTemp.createTemp(
      'fitness_ai_hive_test_',
    );
    Hive.init(hiveTestDirectory.path);
    await Hive.openBox('myboxcallorie');
  });

  setUp(() async {
    await Hive.box('myboxcallorie').clear();
  });

  tearDownAll(() async {
    await Hive.close();
    await hiveTestDirectory.delete(recursive: true);
  });

  testWidgets('rejects a zero calorie goal', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: dashboard()));
    await tester.tap(find.text('ระบุเป้าหมายแคลอรี่'));
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextFormField), '0');
    await tester.tap(find.text('ตกลง'));
    await tester.pumpAndSettle();

    expect(find.text('กรุณากรอกตัวเลขที่มากกว่า 0'), findsOneWidget);
    expect(Hive.box('myboxcallorie').get(11), isNull);
  });

  testWidgets('rejects non-numeric calorie goals', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: dashboard()));
    await tester.tap(find.text('ระบุเป้าหมายแคลอรี่'));
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextFormField), 'not-a-number');
    await tester.tap(find.text('ตกลง'));
    await tester.pumpAndSettle();

    expect(find.text('กรุณากรอกตัวเลขที่มากกว่า 0'), findsOneWidget);
    expect(Hive.box('myboxcallorie').get(11), isNull);
  });
}
