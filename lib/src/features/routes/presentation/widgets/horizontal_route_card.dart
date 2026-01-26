
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/src/core/utils/extensions/context_extensions.dart';
import '../entities/route_entity.dart';
import 'labeled_icon.dart';

class HorizontalRouteCard extends StatelessWidget {
  const HorizontalRouteCard({
    super.key,
    required this.route, required this.onPressed,
  });

  final RouteEntity route;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: .circular(16),
      onTap: onPressed,
      child: Container(
        clipBehavior: .hardEdge,
        width: 170,
        height: 280,
        decoration: BoxDecoration(
          borderRadius: .circular(16),
          border: BoxBorder.all(
            width: 1,
            color: context.colorScheme.outline,
          ),
        ),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            SizedBox(
              height: 150,
              child: CachedNetworkImage(
                imageUrl: route.imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                placeholder: (context, url) => Container(
                  color: context.colorScheme.surfaceContainerHighest,
                  child: Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: context.colorScheme.primary,
                    ),
                  ),
                ),
                errorWidget: (context, url, error) => Container(
                  color: context.colorScheme.errorContainer,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.broken_image_outlined,
                        size: 48,
                        color: context.colorScheme.onErrorContainer,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Image not available',
                        style: context.textTheme.bodySmall?.copyWith(
                          color: context.colorScheme.onErrorContainer,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    route.title,
                    style: context.textTheme.titleMedium,
                  ),
                  SizedBox(height: 5),
      
                  Container(
                    padding: .symmetric(vertical: 2, horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: .circular(8),
                      color: Colors.amber,
                    ),
                    child: Text(
                      'medium',
                      overflow: .ellipsis,
                      style: context.textTheme.labelSmall,
                    ),
                  ),
                  SizedBox(height: 3),
                  LabeledIcon(
                    label:
                        route.location?.name ??
                        route.gorge,
                    icon: Image.asset(
                      'assets/icons/location_point.png',
                    ),
                  ),
                  SizedBox(height: 5),
                  LabeledIcon(
                    label: '${route.distanceKm} km',
                    icon: Image.asset('assets/icons/route.png'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
