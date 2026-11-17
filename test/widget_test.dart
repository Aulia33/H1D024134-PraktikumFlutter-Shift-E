import 'package:flutter_test/flutter_test.dart';

import 'package:tokokita/main.dart';

void main() {
  testWidgets('LoginPage smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Login'), findsWidgets);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Registrasi'), findsOneWidget);
  });
}
