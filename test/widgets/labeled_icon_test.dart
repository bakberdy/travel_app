import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../lib/src/features/routes/widgets/labeled_icon.dart';

void main() {
  group('LabeledIcon Widget Tests', () {
    testWidgets('should display label text', (tester) async {
      // Arrange & Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: LabeledIcon(
              label: 'Almaty, Kazakhstan',
              icon: Icon(Icons.location_on),
            ),
          ),
        ),
      );

      // Assert
      expect(
        find.text('Almaty, Kazakhstan'),
        findsOneWidget,
        reason: 'Label text should be displayed',
      );
    });

    testWidgets('should display icon widget', (tester) async {
      // Arrange & Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: LabeledIcon(
              label: 'Location',
              icon: Icon(Icons.location_on, key: Key('test_icon')),
            ),
          ),
        ),
      );

      // Assert
      expect(
        find.byKey(Key('test_icon')),
        findsOneWidget,
        reason: 'Icon widget should be displayed',
      );
    });

    testWidgets('should display custom icon from asset', (tester) async {
      // Arrange & Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: LabeledIcon(
              label: '10.5 km',
              icon: Image.asset('assets/icons/route.png', key: Key('custom_icon')),
            ),
          ),
        ),
      );

      // Assert
      expect(
        find.byKey(Key('custom_icon')),
        findsOneWidget,
        reason: 'Custom icon should be displayed',
      );
    });

    testWidgets('should have icon with 16x16 size', (tester) async {
      // Arrange & Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: LabeledIcon(
              label: 'Distance',
              icon: Icon(Icons.route),
            ),
          ),
        ),
      );

      // Assert
      final sizedBox = tester.widget<SizedBox>(
        find.ancestor(
          of: find.byType(Icon),
          matching: find.byType(SizedBox),
        ).first,
      );
      
      expect(
        sizedBox.height,
        16,
        reason: 'Icon container should have height of 16',
      );
      
      expect(
        sizedBox.width,
        16,
        reason: 'Icon container should have width of 16',
      );
    });

    testWidgets('should have 5px spacing between icon and label', (tester) async {
      // Arrange & Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: LabeledIcon(
              label: 'Location',
              icon: Icon(Icons.location_on),
            ),
          ),
        ),
      );

      // Assert
      final row = tester.widget<Row>(find.byType(Row));
      final spacer = row.children[1] as SizedBox;
      
      expect(
        spacer.width,
        5,
        reason: 'Should have 5px spacing between icon and label',
      );
    });

    testWidgets('should have text with ellipsis overflow', (tester) async {
      // Arrange & Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SizedBox(
              width: 100,
              child: LabeledIcon(
                label: 'Very long location name that should overflow',
                icon: Icon(Icons.location_on),
              ),
            ),
          ),
        ),
      );

      // Assert
      final text = tester.widget<Text>(
        find.text('Very long location name that should overflow'),
      );
      
      expect(
        text.overflow,
        TextOverflow.ellipsis,
        reason: 'Text should have ellipsis overflow',
      );
    });

    testWidgets('should limit text to 2 lines', (tester) async {
      // Arrange & Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: LabeledIcon(
              label: 'Long text',
              icon: Icon(Icons.location_on),
            ),
          ),
        ),
      );

      // Assert
      final text = tester.widget<Text>(find.text('Long text'));
      
      expect(
        text.maxLines,
        2,
        reason: 'Text should be limited to 2 lines',
      );
    });

    testWidgets('should wrap text in Flexible widget', (tester) async {
      // Arrange & Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: LabeledIcon(
              label: 'Location',
              icon: Icon(Icons.location_on),
            ),
          ),
        ),
      );

      // Assert
      expect(
        find.ancestor(
          of: find.text('Location'),
          matching: find.byType(Flexible),
        ),
        findsOneWidget,
        reason: 'Text should be wrapped in Flexible widget',
      );
    });

    testWidgets('should display icon before label', (tester) async {
      // Arrange & Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: LabeledIcon(
              label: 'Test Label',
              icon: Icon(Icons.star, key: Key('icon')),
            ),
          ),
        ),
      );

      // Assert
      final row = tester.widget<Row>(find.byType(Row));
      expect(
        row.children.length,
        3,
        reason: 'Row should have 3 children: icon container, spacer, and text',
      );
    });

    testWidgets('should handle empty label', (tester) async {
      // Arrange & Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: LabeledIcon(
              label: '',
              icon: Icon(Icons.location_on),
            ),
          ),
        ),
      );

      // Assert
      expect(
        find.text(''),
        findsOneWidget,
        reason: 'Should handle empty label without errors',
      );
    });
  });
}
