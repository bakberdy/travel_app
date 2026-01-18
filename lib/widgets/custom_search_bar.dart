
import 'package:flutter/material.dart';
import 'package:travel_app/context_extensions.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const .symmetric(horizontal: 16),
        child: TextField(
          style: context.textTheme.bodyMedium,
          decoration: InputDecoration(
            hintText: 'Find things to do',
            prefixIcon: Icon(Icons.search),
            fillColor: context.colorScheme.surfaceContainer,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: .circular(16),
              borderSide: .none
            )
          ),
        ),
      ),
    );
  }
}
