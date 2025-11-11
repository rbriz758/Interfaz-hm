// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:isaacperezmascaro_rodrigobrizramos_p1/main.dart';

void main() {
  testWidgets('Navigate to list view and show items', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Should show welcome text on the main screen
    expect(find.text('Bienvenido espectador'), findsOneWidget);

    // Tap the button that navigates to the list
    final verPeliculas = find.text('Ver películas');
    expect(verPeliculas, findsOneWidget);
    await tester.tap(verPeliculas);
    await tester.pumpAndSettle();

    // Now we should be on the list screen and find the title
    expect(find.text('Películas disponibles'), findsOneWidget);
    // There should be at least one item from the generated list
    expect(find.byType(ListView), findsOneWidget);
  });
}
