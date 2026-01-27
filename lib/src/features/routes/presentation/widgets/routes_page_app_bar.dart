import 'package:flutter/material.dart';
import 'package:travel_app/src/features/routes/domain/entities/filter_entity.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_sorting_method_entity.dart';
import 'package:travel_app/src/features/routes/presentation/ui_utils/sorting_method_extension.dart';
import 'package:travel_app/src/features/routes/presentation/widgets/custom_search_bar.dart';
import 'package:travel_app/src/features/routes/presentation/widgets/filter_chip.dart';
import 'package:travel_app/src/features/routes/presentation/widgets/sorting_chip.dart';

class RoutesPageAppBar extends StatefulWidget {
  const RoutesPageAppBar({
    super.key,
    required this.filters,
    required this.searchQuery,
    required this.sortingMethod,
    required this.onRemoveFilterTapped,
    required this.onSortTapped,
    required this.onFilterTapped,
    required this.onSearchQueryChanged,
    required this.onSearchClear,
  });

  final RouteSortingMethodEntity sortingMethod;
  final List<FilterEntity>? filters;
  final String searchQuery;
  final void Function(FilterEntity type) onRemoveFilterTapped;
  final VoidCallback onSortTapped;
  final VoidCallback onFilterTapped;
  final void Function(String query) onSearchQueryChanged;
  final VoidCallback onSearchClear;

  @override
  State<RoutesPageAppBar> createState() => _AppBarState();
}

class _AppBarState extends State<RoutesPageAppBar> {
  late final TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController(text: widget.searchQuery);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: true,
      centerTitle: true,
      title: const Text('Routes'),
      actions: [
        GestureDetector(
          onTap: widget.onSortTapped,
          child: Image.asset('assets/icons/sort.png', height: 22, width: 22),
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: widget.onFilterTapped,
          child: Image.asset('assets/icons/filter.png', height: 22, width: 22),
        ),
        const SizedBox(width: 10),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomSearchBar(
                onClear: widget.onSearchClear,
                hintText: 'Find Your Route',
                controller: _searchController,
                onChanged: widget.onSearchQueryChanged,
              ),
            ),
            const SizedBox(height: 10),
            _ChipsRow(
              sortingLabel: widget.sortingMethod.localize(context),
              filters: widget.filters,
              onRemoveTap: widget.onRemoveFilterTapped,
            ),
          ],
        ),
      ),
    );
  }
}

class _ChipsRow extends StatelessWidget {
  const _ChipsRow({
    required this.sortingLabel,
    required this.filters,
    required this.onRemoveTap,
  });

  final String? sortingLabel;
  final List<FilterEntity>? filters;
  final void Function(FilterEntity filter) onRemoveTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 5),
      height: 30,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        children: [
          if (sortingLabel != null) SortingChip(label: sortingLabel!),
          if (filters != null && filters!.isNotEmpty) ...[
            Center(
              child: SizedBox(
                height: 25,
                child: VerticalDivider(
                  color: Theme.of(context).colorScheme.outline,
                  thickness: 2,
                ),
              ),
            ),
            ...filters!.map(
              (filter) => Padding(
                padding: const EdgeInsets.only(right: 8),
                child: FilteringChip(
                  label: filter.label,
                  onRemoveTap: () {
                    onRemoveTap(filter);
                  },
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
