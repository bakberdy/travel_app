import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:travel_app/entities/location_entity.dart';
import 'package:travel_app/entities/route_entity.dart';
import 'package:travel_app/widgets/category_section.dart';
import 'package:travel_app/widgets/category_header.dart';
import 'package:travel_app/widgets/route_card.dart';

void main() {
  group('CategorySection Widget Tests', () {
    final testRoutes = [
      RouteEntity(
        title: 'Mountain Trail',
        location: LocationEntity(name: 'Almaty', lat: 43.2220, long: 76.8512),
        coordinates: [],
        description: 'Beautiful mountain trail',
        direction: 'Zailiyskiy Alatau',
        gorge: 'Big Almaty Gorge',
        difficulty: RouteDifficulty.medium,
        distanceKm: 10.5,
        imageUrl: 'https://example.com/image1.jpg',
      ),
      RouteEntity(
        title: 'Forest Path',
        location: LocationEntity(name: 'Astana', lat: 51.1694, long: 71.4491),
        coordinates: [],
        description: 'Scenic forest path',
        direction: 'Northern Hills',
        gorge: 'Green Valley',
        difficulty: RouteDifficulty.easy,
        distanceKm: 5.2,
        imageUrl: 'https://example.com/image2.jpg',
      ),
    ];

    testWidgets('should display category title', (tester) async {
      // Arrange & Act
      await mockNetworkImagesFor(() => tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CategorySection(
              routes: testRoutes,
              title: 'Popular Routes',
            ),
          ),
        ),
      ));

      // Assert
      expect(
        find.text('Popular Routes'),
        findsOneWidget,
        reason: 'Category title should be displayed',
      );
    });

    testWidgets('should display CategoryHeader widget', (tester) async {
      // Arrange & Act
      await mockNetworkImagesFor(() => tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CategorySection(
              routes: testRoutes,
              title: 'Popular Routes',
            ),
          ),
        ),
      ));

      // Assert
      expect(
        find.byType(CategoryHeader),
        findsOneWidget,
        reason: 'CategoryHeader should be displayed',
      );
    });

    testWidgets('should display all route cards in horizontal ListView', (tester) async {
      // Arrange & Act
      await mockNetworkImagesFor(() => tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CategorySection(
              routes: testRoutes,
              title: 'Popular Routes',
            ),
          ),
        ),
      ));

      // Assert
      expect(
        find.byType(RouteCard),
        findsNWidgets(testRoutes.length),
        reason: 'Should display a RouteCard for each route',
      );
    });

    testWidgets('should have horizontal scrolling ListView', (tester) async {
      // Arrange & Act
      await mockNetworkImagesFor(() => tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CategorySection(
              routes: testRoutes,
              title: 'Popular Routes',
            ),
          ),
        ),
      ));

      // Assert
      final listView = tester.widget<ListView>(find.byType(ListView));
      expect(
        listView.scrollDirection,
        Axis.horizontal,
        reason: 'ListView should scroll horizontally',
      );
    });

    testWidgets('should have ListView with height of 280', (tester) async {
      // Arrange & Act
      await mockNetworkImagesFor(() => tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CategorySection(
              routes: testRoutes,
              title: 'Popular Routes',
            ),
          ),
        ),
      ));

      // Assert
      final sizedBox = tester.widget<SizedBox>(
        find.ancestor(
          of: find.byType(ListView),
          matching: find.byType(SizedBox),
        ).first,
      );
      
      expect(
        sizedBox.height,
        280,
        reason: 'ListView container should have height of 280',
      );
    });

    testWidgets('should handle empty routes list', (tester) async {
      // Arrange & Act
      await mockNetworkImagesFor(() => tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CategorySection(
              routes: [],
              title: 'Empty Routes',
            ),
          ),
        ),
      ));

      // Assert
      expect(
        find.byType(RouteCard),
        findsNothing,
        reason: 'Should not display any RouteCard when routes list is empty',
      );

      expect(
        find.byType(CategoryHeader),
        findsOneWidget,
        reason: 'CategoryHeader should still be displayed even with empty routes',
      );
    });

    testWidgets('should have symmetric horizontal padding of 16', (tester) async {
      // Arrange & Act
      await mockNetworkImagesFor(() => tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CategorySection(
              routes: testRoutes,
              title: 'Popular Routes',
            ),
          ),
        ),
      ));

      // Assert - Check padding on CategoryHeader
      final categoryHeaderPadding = tester.widget<Padding>(
        find.ancestor(
          of: find.byType(CategoryHeader),
          matching: find.byType(Padding),
        ).first,
      );
      
      expect(
        categoryHeaderPadding.padding,
        EdgeInsets.symmetric(horizontal: 16),
        reason: 'CategoryHeader should have horizontal padding of 16',
      );

      // Assert - Check padding on ListView
      final listView = tester.widget<ListView>(find.byType(ListView));
      expect(
        listView.padding,
        EdgeInsets.symmetric(horizontal: 16),
        reason: 'ListView should have horizontal padding of 16',
      );
    });

    testWidgets('should display route titles in route cards', (tester) async {
      // Arrange & Act
      await mockNetworkImagesFor(() => tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CategorySection(
              routes: testRoutes,
              title: 'Popular Routes',
            ),
          ),
        ),
      ));

      // Assert
      expect(
        find.text('Mountain Trail'),
        findsOneWidget,
        reason: 'First route title should be displayed',
      );

      expect(
        find.text('Forest Path'),
        findsOneWidget,
        reason: 'Second route title should be displayed',
      );
    });
  });
}
