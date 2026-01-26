import 'package:flutter/material.dart';
import 'package:travel_app/src/features/routes/presentation/ui_utils/route_difficulty.dart';
import '../../domain/entities/route_difficulty_entity.dart';
import '../../domain/entities/route_type_entity.dart';

class FilteringBottomSheet extends StatefulWidget {
  const FilteringBottomSheet({
    super.key,
    required this.onApplyFilters,
    this.availableRouteTypes,
    this.initialMinKm,
    this.initialMaxKm,
    required this.initialDifficialties,
    required this.initialTypes,
  });

  final double? initialMinKm;
  final double? initialMaxKm;
  final Set<RouteDifficultyEntity> initialDifficialties;
  final Set<RouteTypeEntity> initialTypes;
  final Set<RouteTypeEntity>? availableRouteTypes;


  final void Function(
    {
      double? minKm,
      double? maxKm,
      Set<RouteDifficultyEntity>? difficialties,
      Set<RouteTypeEntity>? types,
    }
  )
  onApplyFilters;

  @override
  State<FilteringBottomSheet> createState() => _FilteringBottomSheetState();
}

class _FilteringBottomSheetState extends State<FilteringBottomSheet> {
  // Filter state
  Set<RouteDifficultyEntity> selectedDifficulties = {};
  RangeValues distanceRange = RangeValues(0, 50);
  Set<RouteTypeEntity> selectedTypes = {};

  List<RouteTypeEntity> get routeTypes =>
      widget.availableRouteTypes?.toList() ?? [];

  @override
  void initState() {
    super.initState();
    _initializeFromFilters();
  }

  void _initializeFromFilters() {

   selectedDifficulties = Set.from(widget.initialDifficialties);
   if (widget.initialMaxKm!=null&&widget.initialMinKm!=null) {
     distanceRange = RangeValues(widget.initialMinKm!, widget.initialMaxKm!);
   }
   selectedTypes = Set.from(widget.initialTypes);

  }

  void _clearAll() {
    setState(() {
      selectedDifficulties.clear();
      distanceRange = RangeValues(0, 50);
      selectedTypes.clear();
    });
  }

  IconData _getTypeIcon(RouteTypeEntity type) {
    switch (type) {
      case RouteTypeEntity.lake:
        return Icons.water;
      case RouteTypeEntity.waterfall:
        return Icons.water_drop;
      case RouteTypeEntity.peak:
        return Icons.terrain;
    }
  }

  String _getTypeLabel(RouteTypeEntity type) {
    switch (type) {
      case RouteTypeEntity.lake:
        return 'Lake';
      case RouteTypeEntity.waterfall:
        return 'Waterfall';
      case RouteTypeEntity.peak:
        return 'Peak';
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.85,
      ),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Filters', style: theme.textTheme.titleLarge),
                  Row(
                    children: [
                      TextButton(
                        onPressed: _clearAll,
                        child: Text(
                          'Clear All',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: colorScheme.primary,
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.close),
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(height: 1, color: colorScheme.outline),

            // Content
            Flexible(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Difficulty Section
                    _SectionTitle(title: 'Difficulty'),
                    SizedBox(height: 12),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: RouteDifficultyEntity.values.map((difficulty) {
                        final isSelected = selectedDifficulties.contains(
                          difficulty,
                        );
                        final difficultyColor = difficulty.getColor(context);

                        return FilterChip(
                          selected: isSelected,
                          label: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? colorScheme.onPrimary
                                      : difficultyColor,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(width: 6),
                              Text(difficulty.label),
                            ],
                          ),
                          onSelected: (selected) {
                            setState(() {
                              if (selected) {
                                selectedDifficulties.add(difficulty);
                              } else {
                                selectedDifficulties.remove(difficulty);
                              }
                            });
                          },
                          backgroundColor: colorScheme.surfaceContainer,
                          selectedColor: difficultyColor,
                          checkmarkColor: colorScheme.onPrimary,
                          labelStyle: theme.textTheme.labelMedium?.copyWith(
                            color: isSelected
                                ? colorScheme.onPrimary
                                : colorScheme.onSurface,
                            fontWeight: isSelected
                                ? FontWeight.w600
                                : FontWeight.normal,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(
                              color: isSelected
                                  ? difficultyColor
                                  : colorScheme.outline,
                              width: 1,
                            ),
                          ),
                        );
                      }).toList(),
                    ),

                    SizedBox(height: 28),

                    // Distance Range Section
                    _SectionTitle(title: 'Distance Range'),
                    SizedBox(height: 8),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 20,
                      ),
                      decoration: BoxDecoration(
                        color: colorScheme.surfaceContainer,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _DistanceLabel(
                                value: distanceRange.start,
                                label: 'Min',
                                colorScheme: colorScheme,
                                theme: theme,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: colorScheme.primaryContainer,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.straighten,
                                      size: 16,
                                      color: colorScheme.primary,
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      '${distanceRange.start.toStringAsFixed(1)} - ${distanceRange.end.toStringAsFixed(1)} km',
                                      style: theme.textTheme.labelMedium
                                          ?.copyWith(
                                            color: colorScheme.primary,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              _DistanceLabel(
                                value: distanceRange.end,
                                label: 'Max',
                                colorScheme: colorScheme,
                                theme: theme,
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          SliderTheme(
                            data: SliderThemeData(
                              trackHeight: 4,
                              activeTrackColor: colorScheme.primary,
                              inactiveTrackColor: colorScheme.outline,
                              thumbColor: colorScheme.primary,
                              overlayColor: colorScheme.primaryContainer,
                              valueIndicatorColor: colorScheme.primary,
                              rangeThumbShape: RoundRangeSliderThumbShape(
                                enabledThumbRadius: 10,
                              ),
                              rangeValueIndicatorShape:
                                  PaddleRangeSliderValueIndicatorShape(),
                            ),
                            child: RangeSlider(
                              values: distanceRange,
                              min: 0,
                              max: 50,
                              divisions: 100,
                              labels: RangeLabels(
                                '${distanceRange.start.toStringAsFixed(1)} km',
                                '${distanceRange.end.toStringAsFixed(1)} km',
                              ),
                              onChanged: (values) {
                                setState(() {
                                  distanceRange = values;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 28),

                    // Route Type Section
                    _SectionTitle(title: 'Route Type'),
                    SizedBox(height: 12),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: routeTypes.map((type) {
                        final isSelected = selectedTypes.contains(type);

                        return ChoiceChip(
                          selected: isSelected,
                          label: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                _getTypeIcon(type),
                                size: 16,
                                color: isSelected
                                    ? colorScheme.onPrimaryContainer
                                    : colorScheme.onSurfaceVariant,
                              ),
                              SizedBox(width: 6),
                              Text(_getTypeLabel(type)),
                            ],
                          ),
                          onSelected: (selected) {
                            setState(() {
                              if (selected) {
                                selectedTypes.add(type);
                              } else {
                                selectedTypes.remove(type);
                              }
                            });
                          },
                          backgroundColor: colorScheme.surfaceContainer,
                          selectedColor: colorScheme.primaryContainer,
                          labelStyle: theme.textTheme.labelMedium?.copyWith(
                            color: isSelected
                                ? colorScheme.onPrimaryContainer
                                : colorScheme.onSurface,
                            fontWeight: isSelected
                                ? FontWeight.w600
                                : FontWeight.normal,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(
                              color: isSelected
                                  ? colorScheme.primary
                                  : colorScheme.outline,
                              width: 1,
                            ),
                          ),
                          showCheckmark: false,
                        );
                      }).toList(),
                    ),

                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),

            // Bottom Action Button
            Padding(
              padding: EdgeInsets.all(20),
              child: SafeArea(
                top: false,
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: FilledButton(
                    onPressed: () {
                      widget.onApplyFilters(
                        types: selectedTypes,
                        difficialties: selectedDifficulties,
                        minKm: distanceRange.start,
                        maxKm: distanceRange.end,
                      );
                      Navigator.pop(context);
                    },
                    child: Text('Apply Filters'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 16),
    );
  }
}

class _DistanceLabel extends StatelessWidget {
  const _DistanceLabel({
    required this.value,
    required this.label,
    required this.colorScheme,
    required this.theme,
  });

  final double value;
  final String label;
  final ColorScheme colorScheme;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: theme.textTheme.labelSmall?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
        SizedBox(height: 4),
        Text(
          '${value.toStringAsFixed(1)}km',
          style: theme.textTheme.titleSmall?.copyWith(
            color: colorScheme.onSurface,
          ),
        ),
      ],
    );
  }
}
