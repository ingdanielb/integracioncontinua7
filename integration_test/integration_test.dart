import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:pruebas/main.dart';



Future<Widget> createHomeScreen() async {
  WidgetsFlutterBinding.ensureInitialized();
  return const MyApp();
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("Basic app loading", (WidgetTester tester) async {
    Widget w = await createHomeScreen();
    await tester.pumpWidget(w);
  });
}
