import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'classes/user_detail.dart';

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;

  final skipBtn = find.byKey(const Key('skip_button'));
  final loginBtn = find.byKey(const Key('already_user_button'));
  final emailInput = find.byKey(const Key('email_address'));
  final passInput = find.byKey(const Key('password'));
  final signInBtn = find.byKey(const Key('sign_in_button'));
  final moreTab = find.byKey(const Key('bottom_navigation_tab_4'));
  final settingsBtn = find.byKey(const Key('settings_button_0'));

  testWidgets('Testing Login', (WidgetTester tester) async {
    tester.printToConsole('== Start Testing Login ==');
    final app = await example_app.main();

    final userDetails = await UserDetail().getUserDetails();

    await tester.pumpWidget(app);

    await tester.pumpAndSettle(const Duration(seconds: 10));

    tester.printToConsole('== Main ok pump and settle ==');
    await tester.pumpAndSettle();

    await tester.tap(skipBtn);

    await tester.pumpAndSettle();
    await tester.tap(loginBtn);

    await tester.pumpAndSettle();
    await tester.enterText(emailInput, userDetails.email);

    await tester.pumpAndSettle();
    await tester.enterText(passInput, userDetails.password);

    await tester.pumpAndSettle();
    await tester.tap(signInBtn);

    await Future.delayed(const Duration(seconds: 10));
    await tester.tap(moreTab);

    await Future.delayed(const Duration(seconds: 10));
    await tester.tap(settingsBtn);

    await tester.pumpAndSettle();
    final textFind = find.text('Flutter Test');
    expect(textFind, findsOneWidget);

    tester.printToConsole('== Stop Testing Login ==');
  });
}
