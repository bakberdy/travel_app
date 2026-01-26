import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../lib/src/features/routes/widgets/location_button.dart';

void main() {
  group('LocationButton Widget Tests', () {
    
    testWidgets('should display location icon, text, and dropdown arrow', (tester) async {
      // Arrange & Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: LocationButton(onTap: () {}, text: 'Location'),
          ),
        ),
      );

      // Assert
      expect(
        find.text('Location'),
        findsOneWidget,
        reason: 'Location text should be displayed',
      );
      
      expect(
        find.byIcon(Icons.location_on_outlined),
        findsOneWidget,
        reason: 'Location icon should be visible',
      );
      
      expect(
        find.byIcon(Icons.keyboard_arrow_down_rounded),
        findsOneWidget,
        reason: 'Dropdown arrow icon should be visible',
      );
    });

    testWidgets('should call onTap callback when button is tapped', (tester) async {
      // Arrange
      bool wasTapped = false;
      
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: LocationButton(
              onTap: () => wasTapped = true,
              text: 'Location',
            ),
          ),
        ),
      );

      // Act - Tap the button
      await tester.tap(find.byType(LocationButton));
      await tester.pump();

      // Assert
      expect(
        wasTapped,
        isTrue,
        reason: 'onTap callback should be triggered when button is tapped',
      );
    });

    testWidgets('should display custom text passed as parameter', (tester) async {
      // Arrange
      const customText = 'Kazakhstan';
      
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: LocationButton(onTap: () {}, text: customText),
          ),
        ),
      );

      // Assert
      expect(
        find.text(customText),
        findsOneWidget,
        reason: 'Custom text should be displayed',
      );
    });

    testWidgets('should have InkWell with border radius of 16', (tester) async {
      // Arrange & Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: LocationButton(onTap: () {}, text: 'Location'),
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
