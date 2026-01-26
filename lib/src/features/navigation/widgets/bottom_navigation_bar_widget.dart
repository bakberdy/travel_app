import 'package:flutter/material.dart';
import 'package:travel_app/src/core/utils/extensions/context_extensions.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    super.key,
    this.onSetIndex,
    required this.selectedIndex,
  });
  final ValueChanged<int>? onSetIndex;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: context.colorScheme.onSurface.withAlpha(25),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
          color: context.colorScheme.surface,
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final itemWidth = constraints.maxWidth / 4;

            return Stack(
              children: [
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  left: selectedIndex * itemWidth,
                  top: 0,
                  bottom: 0,
                  width: itemWidth,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: context.colorScheme.primary.withAlpha(50),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _BottomNavigationBarWidgetItem(
                      label: 'Home',
                      icon: Icons.home,
                      isSelected: selectedIndex == 0,
                      onPressed: () => onSetIndex?.call(0),
                    ),
                    _BottomNavigationBarWidgetItem(
                      label: 'Catalog',
                      icon: Icons.search,
                      isSelected: selectedIndex == 1,
                      onPressed: () => onSetIndex?.call(1),
                    ),
                    _BottomNavigationBarWidgetItem(
                      label: 'Cart',
                      icon: Icons.shopping_cart_outlined,
                      isSelected: selectedIndex == 2,
                      onPressed: () => onSetIndex?.call(2),
                    ),
                    _BottomNavigationBarWidgetItem(
                      label: 'Profile',
                      icon: Icons.person,
                      isSelected: selectedIndex == 3,
                      onPressed: () => onSetIndex?.call(3),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _BottomNavigationBarWidgetItem extends StatelessWidget {
  const _BottomNavigationBarWidgetItem({
    required this.label,
    required this.icon,
    this.onPressed,
    required this.isSelected,
  });
  final String label;
  final IconData icon;
  final VoidCallback? onPressed;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: context.colorScheme.primary,
                size: 24,
              ),
              Text(
                label,
                style: TextStyle(
                  color: context.colorScheme.primary,
                  fontWeight:
                      isSelected ? FontWeight.w600 : FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
