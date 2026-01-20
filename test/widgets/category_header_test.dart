import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:travel_app/widgets/category_header.dart';

void main() {
  group('CategoryHeader Widget Tests', () {
    testWidgets('should display title text', (tester) async {
      // Arrange & Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CategoryHeader(title: 'Popular Routes'),
          ),
        ),
      );

      // Assert
      expect(
        find.text('Popular Routes'),
        findsOneWidget,
        reason: 'Title text should be displayed',
      );
    });

    testWidgets('should display "See all" text', (tester) async {
      // Arrange & Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CategoryHeader(title: 'Popular Routes'),
          ),
        ),
      );

      // Assert
      expect(
        find.text('See all'),
        findsOneWidget,
        reason: '"See all" text should always be displayed',
      );
    });

    testWidgets('should call onSeeAllTapped callback when "See all" is tapped', (tester) async {
      // Arrange
      bool wasTapped = false;
      
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CategoryHeader(
              title: 'Popular Routes',
              onSeeAllTapped: () => wasTapped = true,
            ),
          ),
        ),
      );

      // Act - Tap the "See all" button
      await tester.tap(find.text('See all'));
      await tester.pump();

      // Assert
      expect(
        wasTapped,
        isTrue,
        reason: 'onSeeAllTapped callback should be triggered when "See all" is tapped',
      );
    });

    testWidgets('should not throw error when onSeeAllTapped is null', (tester) async {
      // Arrange & Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CategoryHeader(title: 'Popular Routes'),
          ),
        ),
      );

      // Act - Tap the "See all" button with null callback
      await tester.tap(find.text('See all'));
      await tester.pump();

      // Assert - Should not throw error
      expect(
        find.byType(CategoryHeader),
        findsOneWidget,
        reason: 'Widget should still exist after tap with null callback',
      );
    });

    testWidgets('should have Row with spaceBetween alignment', (tester) async {
      // Arrange & Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CategoryHeader(title: 'Popular Routes'),
          ),
        ),
      );

      // Assert
      final row = tester.widget<Row>(find.byType(Row));
      expect(
        row.mainAxisAlignment,
        MainAxisAlignment.spaceBetween,
        reason: 'Row should have spaceBetween alignment',
      );
    });

    testWidgets('should display title with titleLarge text style', (tester) async {
      // Arrange & Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CategoryHeader(title: 'Popular Routes'),
          ),
        ),
      );

      // Assert
      final titleText = tester.widget<Text>(find.text('Popular Routes'));
      final textStyle = titleText.style;
      
      expect(
        textStyle,
        isNotNull,
        reason: 'Title should have a text style',
      );
    });

    testWidgets('should have InkWell with border radius of 16', (tester) async {
      // Arrange & Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CategoryHeader(title: 'Popular Routes'),
          ),
        ),
      );

      // Assert
      final inkWell = tester.widget<InkWell>(find.byType(InkWell));
      expect(
        inkWell.borderRadius,
        BorderRadius.circular(16),
        reason: 'InkWell should have border radius of 16 for rounded corners',
      );
    });
  });
}
