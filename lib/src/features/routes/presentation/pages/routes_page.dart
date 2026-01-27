import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/src/core/di/injection.dart';
import 'package:travel_app/src/features/routes/domain/entities/filter_entity.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_category_entity.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_type_entity.dart';
import 'package:travel_app/src/features/routes/presentation/widgets/filtering_bottom_sheet.dart';
import 'package:travel_app/src/features/routes/presentation/widgets/routes_list.dart';
import 'package:travel_app/src/features/routes/presentation/widgets/routes_page_app_bar.dart';
import 'package:travel_app/src/features/routes/presentation/widgets/sorting_bottom_sheet.dart';
import '../blocs/route_types/route_type_bloc.dart';
import '../blocs/routes/routes_bloc.dart';

@RoutePage()
class RoutesPage extends StatelessWidget {
  const RoutesPage({super.key, this.category, this.routeType});

  final RouteCategoryEntity? category;
  final RouteTypeEntity? routeType;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => sl<RoutesBloc>()
            ..add(RoutesEvent.updateFilteringTypes(types: {?routeType}))
            ..add(RoutesEvent.updateFilteringCategory(category: category)),
        ),
        BlocProvider(
          create: (_) =>
              sl<RouteTypeBloc>()..add(const RouteTypeEvent.getRouteTypes()),
        ),
      ],
      child: const _RoutesPageContent(),
    );
  }
}

class _RoutesPageContent extends StatelessWidget {
  const _RoutesPageContent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RoutesBloc, RoutesState>(
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              RoutesPageAppBar(
                sortingMethod: state.sortingMethod,
                filters: state.filters,
                searchQuery: state.searchQuery,
                onRemoveFilterTapped: (FilterEntity filter) {
                  context.read<RoutesBloc>().add(
                    RoutesEvent.removeFilter(filter),
                  );
                },
                onSortTapped: () {
                  SortingBottomSheet.show(
                    context,
                    currentSortingMethod: state.sortingMethod,
                    onSortingMethodSelected: (method) {
                      context.read<RoutesBloc>().add(
                        RoutesEvent.updateSorting(sortingMethod: method),
                      );
                    },
                  );
                },
                onFilterTapped: () async {
                  final routeTypeState = context.read<RouteTypeBloc>().state;
                  final routesBloc = context.read<RoutesBloc>();
                  await showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (context) => FilteringBottomSheet(
                      initialMinKm: state.minKm,
                      initialMaxKm: state.maxKm,
                      initialDifficialties: state.filteringDifficulties ?? {},
                      initialTypes: state.filteringTypes ?? {},
                      availableRouteTypes: routeTypeState.routeTypes?.toSet(),
                      onApplyFilters:
                          ({context, minKm, maxKm, difficialties, types}) {
                            routesBloc
                              ..add(
                                RoutesEvent.updateFilteringDifficulties(
                                  difficulties: difficialties,
                                ),
                              )
                              ..add(
                                RoutesEvent.updateFilteringTypes(types: types),
                              )
                              ..add(
                                RoutesEvent.updateDistanceRange(minKm, maxKm),
                              );
                          },
                    ),
                  );
                },
                onSearchQueryChanged: (String query) {
                  context.read<RoutesBloc>().add(
                    RoutesEvent.updateSearch(searchQuery: query),
                  );
                },
                onSearchClear: () {
                  context.read<RoutesBloc>().add(
                    RoutesEvent.updateSearch(searchQuery: ''),
                  );
                },
              ),
              RoutesList(routes: state.routes, status: state.routesStatus),
            ],
          );
        },
      ),
    );
  }
}
