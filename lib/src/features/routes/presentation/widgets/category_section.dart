import 'package:flutter/material.dart';
import 'package:travel_app/src/core/utils/extensions/context_extensions.dart';
import '../../domain/entities/route_entity.dart';
import 'category_header.dart';
import 'route_card.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    super.key,
    required this.routes,
    required this.title,
    this.onSeeAll,
    required this.isLoading,
  });

  final List<RouteEntity> routes;
  final String title;
  final VoidCallback? onSeeAll;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CategoryHeader(title: title, onSeeAllTapped: onSeeAll),
        ),
        SizedBox(height: 10),

        SizedBox(
          height: 280,
          child: isLoading
              ? Center(child: CircularProgressIndicator())
              : routes.isEmpty
              ? Center(
                  child: Text(
                    'No routes found',
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: context.colorScheme.error,
                    ),
                  ),
                )
              : ListView.separated(
                  padding: .symmetric(horizontal: 16),
                  scrollDirection: .horizontal,
                  itemBuilder: (context, index) {
                    return RouteCard(route: routes[index], onPressed: () {});
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(width: 10),
                  itemCount: routes.length,
                ),
        ),
      ],
    );
  }
}
