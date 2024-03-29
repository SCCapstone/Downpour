import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:pohnpeian_language_app/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('User has the ability to log in', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();
    final button = find.byKey(const ValueKey("SignInButton_fromLogIn"));
    expect(button, findsOneWidget);
    await Future.delayed(const Duration(seconds: 2));
    await Future.delayed(const Duration(seconds: 1));
    final userNameField = find.byKey(const ValueKey("emailField"));
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

  testWidgets('Log in user', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();
    await Future.delayed(const Duration(seconds: 1));
    await Future.delayed(const Duration(seconds: 1));
    final userNameField = find.byKey(const ValueKey("emailField"));
    await Future.delayed(const Duration(seconds: 1));
    final passwordField = find.byKey(const ValueKey("passwordField"));
    await Future.delayed(const Duration(seconds: 1));
    await tester.enterText(userNameField, "tester@email.com");
    await Future.delayed(const Duration(seconds: 1));
    await tester.enterText(passwordField, "tester");
    await Future.delayed(const Duration(seconds: 1));
    await tester.pumpAndSettle();
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();
    await Future.delayed(const Duration(seconds: 1));
    await tester.ensureVisible(find.byKey(const Key("SignInButton_fromLogIn")));
    final button = find.byKey(const ValueKey("SignInButton_fromLogIn"));
    await tester.tap(button);
    await tester.pumpAndSettle();
    await Future.delayed(const Duration(seconds: 6));
    await tester.pumpAndSettle();
    expect(find.textContaining("Learn"), findsWidgets);
  });

  testWidgets('Sign up', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();
    await Future.delayed(const Duration(seconds: 1));
    final button = find.byKey(const ValueKey("SignUpButton"));
    await tester.tap(button);
    await tester.pumpAndSettle();
    await Future.delayed(const Duration(seconds: 3));

    final nameField = find.byKey(const ValueKey("signup_namefield"));
    final passwordField1 = find.byKey(const ValueKey("signup_passwordfield1"));
    final passwordField2 = find.byKey(const ValueKey("signup_passwordfield2"));
    final emailField = find.byKey(const ValueKey("signup_emailfield"));

    await tester.pumpAndSettle();
    await tester.enterText(nameField, "SomeName");
    await tester.pumpAndSettle();
    await tester.enterText(passwordField1, "SomePassword");
    await tester.pumpAndSettle();
    await tester.enterText(passwordField2, "SomePassword");
    await tester.pumpAndSettle();
    await tester.enterText(emailField, "someemail@email.com");
    await tester.pumpAndSettle();
    expect(find.text('Sign Up!'), findsWidgets);
  });
}
