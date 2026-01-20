import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:travel_app/widgets/custom_search_bar.dart';

void main() {
  group('CustomSearchBar widget test', () {
    testWidgets('Should display search icon and hint text ', (tester) async {
      //arrange & act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(body: CustomSearchBar(hintText: 'hint')),
        ),
      );

      expect(
        find.byIcon(Icons.search),
        findsOneWidget,
        reason: 'Search Prefix Icon should be visible always',
      );

      expect(
        find.text('hint'),
        findsOneWidget,
        reason: 'hint text should be visible',
      );
    });

    testWidgets('Should display clear button and enter the text from keyboard', (tester) async {
      // Arrange
      final controller = TextEditingController();
      bool wasCleared = false;
      
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CustomSearchBar(
              hintText: 'hint',
              controller: controller,
              onClear: () {
                wasCleared = true;
                controller.clear();
              },
            ),
          ),
        ),
      );

      // Act - Enter text in the search bar
      await tester.enterText(find.byType(TextField), 'Test search');
      await tester.pump();

      // Assert - Text should be entered
      expect(
        find.text('Test search'),
        findsOneWidget,
        reason: 'Entered text should be displayed in the search bar',
      );

      // Assert - Clear button should appear when text is entered
      expect(
        find.byIcon(Icons.clear),
        findsOneWidget,
        reason: 'Clear button should appear when text field has content',
      );

      // Act - Tap the clear button
      await tester.tap(find.byIcon(Icons.clear));
      await tester.pump();

      // Assert - onClear callback should be triggered
      expect(
        wasCleared,
        isTrue,
        reason: 'onClear callback should be called when clear button is tapped',
      );

      // Assert - Text should be cleared
      expect(
        controller.text,
        isEmpty,
        reason: 'Text field should be empty after clearing',
      );

      // Assert - Clear button should disappear
      expect(
        find.byIcon(Icons.clear),
        findsNothing,
        reason: 'Clear button should disappear when text field is empty',
      );
    });
  });

  
}
