import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:pohnpeian_language_app/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('User has the ability to log in', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();
    final button = find.byKey(const ValueKey("signInButton"));
    await Future.delayed(const Duration(seconds: 2));
    await tester.tap(button);
    await Future.delayed(const Duration(seconds: 1));
    final userNameField = find.byKey(const ValueKey("usernameField"));
    await Future.delayed(const Duration(seconds: 1));
    final passwordField = find.byKey(const ValueKey("passwordField"));
    await Future.delayed(const Duration(seconds: 1));
    await tester.enterText(userNameField, "someUserName");
    await Future.delayed(const Duration(seconds: 2));
    await tester.enterText(passwordField, "somePassword");
    await Future.delayed(const Duration(seconds: 2));
    await tester.pumpAndSettle();
    await Future.delayed(const Duration(seconds: 1));
    expect(find.text('Log In'), findsWidgets);
  });
}
