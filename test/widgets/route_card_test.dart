import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:travel_app/src/features/routes/domain/entities/location_entity.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_entity.dart';
import 'package:travel_app/src/features/routes/presentation/types/route_difficulty.dart';
import 'package:travel_app/src/features/routes/presentation/widgets/route_card.dart';
import 'package:travel_app/src/features/routes/presentation/widgets/labeled_icon.dart';

void main() {
  group('RouteCard Widget Tests', () {
    final testRoute = RouteEntity(
      title: 'Mountain Trail',
      location: LocationEntity(name: 'Almaty', lat: 43.2220, long: 76.8512),
      coordinates: [],
      description: 'Beautiful mountain trail',
      direction: 'Zailiyskiy Alatau',
      gorge: 'Big Almaty Gorge',
      difficulty: RouteDifficulty.medium,
      distanceKm: 10.5,
      imageUrl: 'https://example.com/image.jpg',
    );

    testWidgets('should display route title', (tester) async {
      // Arrange & Act
      await mockNetworkImagesFor(() => tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: RouteCard(route: testRoute, onPressed: () {}),
          ),
        ),
      ));

      // Assert
      expect(
        find.text('Mountain Trail'),
        findsOneWidget,
        reason: 'Route title should be displayed',
      );
    });

    testWidgets('should display difficulty badge', (tester) async {
      // Arrange & Act
      await mockNetworkImagesFor(() => tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: RouteCard(route: testRoute, onPressed: () {}),
          ),
        ),
      ));

      // Assert
      expect(
        find.text('medium'),
        findsOneWidget,
        reason: 'Difficulty badge should be displayed',
      );
    });

    testWidgets('should display location name', (tester) async {
      // Arrange & Act
      await mockNetworkImagesFor(() => tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: RouteCard(route: testRoute, onPressed: () {}),
          ),
        ),
      ));

      // Assert
      expect(
        find.text('Almaty'),
        findsOneWidget,
        reason: 'Location name should be displayed',
      );
    });

    testWidgets('should display distance in kilometers', (tester) async {
      // Arrange & Act
      await mockNetworkImagesFor(() => tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: RouteCard(route: testRoute, onPressed: () {}),
          ),
        ),
      ));

      // Assert
      expect(
        find.text('10.5 km'),
        findsOneWidget,
        reason: 'Distance should be displayed with km unit',
      );
    });

    testWidgets('should display gorge when location is null', (tester) async {
      // Arrange
      final routeWithoutLocation = RouteEntity(
        title: 'Test Route',
        location: null,
        coordinates: [],
        description: 'Test description',
        direction: 'Test Direction',
        gorge: 'Test Gorge',
        difficulty: RouteDifficulty.easy,
        distanceKm: 5.0,
        imageUrl: 'https://example.com/image.jpg',
      );

      // Act
      await mockNetworkImagesFor(() => tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: RouteCard(route: routeWithoutLocation, onPressed: () {}),
          ),
        ),
      ));

      // Assert
      expect(
        find.text('Test Gorge'),
        findsOneWidget,
        reason: 'Gorge should be displayed when location is null',
      );
    });

    testWidgets('should call onPressed callback when card is tapped', (tester) async {
      // Arrange
      bool wasTapped = false;
      
      await mockNetworkImagesFor(() => tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: RouteCard(
              route: testRoute,
              onPressed: () => wasTapped = true,
            ),
          ),
        ),
      ));

      // Act
      await tester.tap(find.byType(RouteCard));
      await tester.pump();

      // Assert
      expect(
        wasTapped,
        isTrue,
        reason: 'onPressed callback should be triggered when card is tapped',
      );
    });

    testWidgets('should have InkWell with border radius of 16', (tester) async {
      // Arrange & Act
      await mockNetworkImagesFor(() => tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: RouteCard(route: testRoute, onPressed: () {}),
          ),
        ),
      ));

      // Assert
      final inkWell = tester.widget<InkWell>(find.byType(InkWell));
      expect(
        inkWell.borderRadius,
        BorderRadius.circular(16),
        reason: 'InkWell should have border radius of 16',
      );
    });

    testWidgets('should have border with outline color', (tester) async {
      // Arrange & Act
      await mockNetworkImagesFor(() => tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: RouteCard(route: testRoute, onPressed: () {}),
          ),
        ),
      ));

      // Assert
      final container = tester.widget<Container>(
        find.descendant(
          of: find.byType(InkWell),
          matching: find.byType(Container),
        ).first,
      );
      
      final decoration = container.decoration as BoxDecoration;
      expect(
        decoration.border,
        isNotNull,
        reason: 'Container should have a border',
      );
    });

    testWidgets('should display network image with correct URL', (tester) async {
      // Arrange & Act
      await mockNetworkImagesFor(() => tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: RouteCard(route: testRoute, onPressed: () {}),
          ),
        ),
      ));

      // Assert
      final cachedImage = tester.widget<CachedNetworkImage>(find.byType(CachedNetworkImage));
      
      expect(
        cachedImage.imageUrl,
        'https://example.com/image.jpg',
        reason: 'Should display image with correct URL',
      );
    });

    testWidgets('should have image with cover fit', (tester) async {
      // Arrange & Act
      await mockNetworkImagesFor(() => tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: RouteCard(route: testRoute, onPressed: () {}),
          ),
        ),
      ));

      // Assert
      final cachedImage = tester.widget<CachedNetworkImage>(find.byType(CachedNetworkImage));
      expect(
        cachedImage.fit,
        BoxFit.cover,
        reason: 'Image should have BoxFit.cover',
      );
    });

    testWidgets('should have image with height of 150', (tester) async {
      // Arrange & Act
      await mockNetworkImagesFor(() => tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: RouteCard(route: testRoute, onPressed: () {}),
          ),
        ),
      ));

      // Assert
      final imageSizedBox = tester.widget<SizedBox>(
        find.ancestor(
          of: find.byType(CachedNetworkImage),
          matching: find.byType(SizedBox),
        ).first,
      );
      
      expect(
        imageSizedBox.height,
        150,
        reason: 'Image container should have height of 150',
      );
    });

    testWidgets('should display two LabeledIcon widgets', (tester) async {
      // Arrange & Act
      await mockNetworkImagesFor(() => tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: RouteCard(route: testRoute, onPressed: () {}),
          ),
        ),
      ));

      // Assert
      expect(
        find.byType(LabeledIcon),
        findsNWidgets(2),
        reason: 'Should display two LabeledIcon widgets (location and distance)',
      );
    });

    testWidgets('should have difficulty badge with amber color', (tester) async {
      // Arrange & Act
      await mockNetworkImagesFor(() => tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: RouteCard(route: testRoute, onPressed: () {}),
          ),
        ),
      ));

      // Assert
      final containers = tester.widgetList<Container>(find.byType(Container));
      
      // Find the difficulty badge container (has amber color)
      bool foundAmberContainer = false;
      for (var container in containers) {
        if (container.decoration is BoxDecoration) {
          final decoration = container.decoration as BoxDecoration;
          if (decoration.color == Colors.amber) {
            foundAmberContainer = true;
            break;
          }
        }
      }
      
      expect(
        foundAmberContainer,
        isTrue,
        reason: 'Difficulty badge should have amber background color',
      );
    });

    testWidgets('should have difficulty badge with rounded corners', (tester) async {
      // Arrange & Act
      await mockNetworkImagesFor(() => tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: RouteCard(route: testRoute, onPressed: () {}),
          ),
        ),
      ));

      // Assert
      final containers = tester.widgetList<Container>(find.byType(Container));
      
      // Find the difficulty badge container
      bool foundRoundedBadge = false;
      for (var container in containers) {
        if (container.decoration is BoxDecoration) {
          final decoration = container.decoration as BoxDecoration;
          if (decoration.color == Colors.amber && 
              decoration.borderRadius == BorderRadius.circular(8)) {
            foundRoundedBadge = true;
            break;
          }
        }
      }
      
      expect(
        foundRoundedBadge,
        isTrue,
        reason: 'Difficulty badge should have border radius of 8',
      );
    });

    testWidgets('should have Column with crossAxisAlignment start', (tester) async {
      // Arrange & Act
      await mockNetworkImagesFor(() => tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: RouteCard(route: testRoute, onPressed: () {}),
          ),
        ),
      ));

      // Assert
      final columns = tester.widgetList<Column>(find.byType(Column));
      expect(
        columns.length,
        greaterThan(0),
        reason: 'Should have Column widgets',
      );
      
      // Check that at least one column has crossAxisAlignment.start
      bool foundStartAlignment = false;
      for (var column in columns) {
        if (column.crossAxisAlignment == CrossAxisAlignment.start) {
          foundStartAlignment = true;
          break;
        }
      }
      
      expect(
        foundStartAlignment,
        isTrue,
        reason: 'At least one Column should have crossAxisAlignment.start',
      );
    });

    testWidgets('should show loading indicator while image is loading', (tester) async {
      // Arrange & Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: RouteCard(route: testRoute, onPressed: () {}),
          ),
        ),
      );

      // Assert - Initially shows loading indicator
      expect(
        find.byType(CircularProgressIndicator),
        findsOneWidget,
        reason: 'Should show loading indicator while image is loading',
      );
    });

    testWidgets('should have placeholder with correct styling', (tester) async {
      // Arrange & Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: RouteCard(route: testRoute, onPressed: () {}),
          ),
        ),
      );

      // Assert
      expect(
        find.byType(CircularProgressIndicator),
        findsOneWidget,
        reason: 'Loading placeholder should contain CircularProgressIndicator',
      );
    });

    testWidgets('should have error widget configured', (tester) async {
      // Arrange & Act
      await mockNetworkImagesFor(() => tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: RouteCard(route: testRoute, onPressed: () {}),
          ),
        ),
      ));

      // Assert - Check that CachedNetworkImage has error widget builder
      final cachedImage = tester.widget<CachedNetworkImage>(find.byType(CachedNetworkImage));
      
      expect(
        cachedImage.errorWidget,
        isNotNull,
        reason: 'Should have error widget configured',
      );
      
      expect(
        cachedImage.placeholder,
        isNotNull,
        reason: 'Should have placeholder configured',
      );
    });
  });
}
