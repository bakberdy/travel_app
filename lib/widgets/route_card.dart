
import 'package:flutter/material.dart';
import 'package:travel_app/context_extensions.dart';
import 'package:travel_app/entities/route_entity.dart';
import 'package:travel_app/widgets/labeled_icon.dart';

class RouteCard extends StatelessWidget {
  const RouteCard({
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
              child: Image.network(
                route.imageUrl,
                fit: .cover,
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
