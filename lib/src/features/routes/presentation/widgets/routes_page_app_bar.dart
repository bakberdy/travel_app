
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_filtering_method_entity.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_sorting_method_entity.dart';
import 'package:travel_app/src/features/routes/presentation/blocs/routes/routes_bloc.dart';
import 'package:travel_app/src/features/routes/presentation/widgets/custom_search_bar.dart';
import 'package:travel_app/src/features/routes/presentation/widgets/filter_chip.dart';
import 'package:travel_app/src/features/routes/presentation/widgets/filtering_bottom_sheet.dart';
import 'package:travel_app/src/features/routes/presentation/widgets/sorting_bottom_sheet.dart';
import 'package:travel_app/src/features/routes/presentation/widgets/sorting_chip.dart';

class RoutesPageAppBar extends StatefulWidget {
  const RoutesPageAppBar({
    super.key,
    required this.sortingMethod,
    required this.filteringMethods,
    required this.searchQuery,
  });

  final RouteSortingMethodEntity sortingMethod;
  final List<RouteFilteringMethod>? filteringMethods;
  final String searchQuery;

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
    final bloc = context.read<RoutesBloc>();

    return SliverAppBar(
      pinned: true,
      floating: true,
      centerTitle: true,
      title: const Text('Routes'),
      actions: [
        GestureDetector(
          onTap: () {
            SortingBottomSheet.show(
              context,
              currentSortingMethod:
                  widget.sortingMethod,
              onSortingMethodSelected: (method) {
                bloc.add(RoutesEvent.updateSorting(sortingMethod: method));
              },
            );
          },
          child: Image.asset('assets/icons/sort.png', height: 22, width: 22),
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: () {
            FilteringBottomSheet.show(
              context,
              initialFilters: widget.filteringMethods,
              onApplyFilters: (filters) {
                bloc.add(RoutesEvent.updateFilters(filteringMethods: filters));
              },
            );
          },
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
                hintText: 'Find Your Route',
                controller: _searchController,
                onChanged: (query) {
                  bloc.add(RoutesEvent.updateSearch(searchQuery: query));
                },
              ),
            ),
            const SizedBox(height: 10),
            _ChipsRow(
              sortingMethod: widget.sortingMethod,
              filteringMethods: widget.filteringMethods,
            ),
          ],
        ),
      ),
    );
  }
}


class _ChipsRow extends StatelessWidget {
  const _ChipsRow({
    required this.sortingMethod,
    required this.filteringMethods,
  });

  final RouteSortingMethodEntity? sortingMethod;
  final List<RouteFilteringMethod>? filteringMethods;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<RoutesBloc>();

    return Container(
      padding: const EdgeInsets.only(bottom: 5),
      height: 30,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        children: [
          if (sortingMethod != null) SortingChip(sortingMethod: sortingMethod!),
          if (filteringMethods != null && filteringMethods!.isNotEmpty) ...[
            Center(
              child: SizedBox(
                height: 25,
                child: VerticalDivider(
                  color: Theme.of(context).colorScheme.outline,
                  thickness: 2,
                ),
              ),
            ),
            ...filteringMethods!.map(
              (filter) => Padding(
                padding: const EdgeInsets.only(right: 8),
                child: FilteringChip(
                  filteringMethod: filter,
                  onRemoveTap: () {
                    bloc.add(RoutesEvent.removeFilter(filterToRemove: filter));
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