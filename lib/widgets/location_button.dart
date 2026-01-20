import 'package:flutter/material.dart';
import 'package:travel_app/utils/context_extensions.dart';

class LocationButton extends StatelessWidget {
  const LocationButton({super.key, required this.onTap, required this.text});
  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: .circular(16),
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              color: context.colorScheme.primary,
              size: 15,
            ),
            Text(text, style: context.textTheme.labelMedium),
            Icon(
              size: 20,
              Icons.keyboard_arrow_down_rounded,
              color: context.colorScheme.primary,
            ),
          ],
        ),
      ),
    );
  }
}
