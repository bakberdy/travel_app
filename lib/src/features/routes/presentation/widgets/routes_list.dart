import 'package:flutter/material.dart';
import 'package:travel_app/src/core/bloc/state_status.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_entity.dart';
import 'package:travel_app/src/features/routes/presentation/widgets/horizontal_route_card.dart';

class RoutesList extends StatelessWidget {
  const RoutesList({super.key, required this.routes, required this.status});

  final List<RouteEntity> routes;
  final StateStatus status;

  @override
  Widget build(BuildContext context) {
    if (status == StateStatus.loading) {
      return const SliverFillRemaining(
        child: Center(child: CircularProgressIndicator()),
      );
    }

    if (status == StateStatus.error) {
      return const SliverFillRemaining(
        child: Center(child: Text('Error loading routes')),
      );
    }

    if (routes.isEmpty) {
      return const SliverFillRemaining(
        child: Center(child: Text('No routes found')),
      );
    }

    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
          if (index.isOdd) {
            return const SizedBox(height: 10);
          }
          final itemIndex = index ~/ 2;
          return HorizontalRouteCard(
            route: routes[itemIndex],
            onPressed: () {},
          );
        }, childCount: routes.length * 2 - 1),
      ),
    );
  }
}
