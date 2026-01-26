import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/src/core/bloc/state_status.dart';
import 'package:travel_app/src/core/di/injection.dart';
import '../../domain/entities/get_route_request_parameters_entity.dart';
import '../../domain/entities/route_filtering_method_entity.dart';
import '../../domain/entities/route_sorting_method_entity.dart';
import '../blocs/routes/routes_bloc.dart';
import '../widgets/custom_search_bar.dart';
import '../widgets/filter_chip.dart';
import '../widgets/filtering_bottom_sheet.dart';
import '../widgets/horizontal_route_card.dart';
import '../widgets/sorting_bottom_sheet.dart';
import '../widgets/sorting_chip.dart';

@RoutePage()
class RoutesPage extends StatelessWidget {
  const RoutesPage({super.key, this.category});

  final String? category;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<RoutesBloc>(),
      child: RoutesPageContent(category: category),
    );
  }
}

class RoutesPageContent extends StatefulWidget {
  const RoutesPageContent({super.key, this.category});

  final String? category;

  @override
  State<RoutesPageContent> createState() => _RoutesPageContentState();
}

class _RoutesPageContentState extends State<RoutesPageContent> {
  late final RoutesBloc routesBloc;
  RouteSortingMethodEntity sortingMethod = RouteSortingMethodEntity.distanceAscending;
  List<RouteFilteringMethod>? filteringMethods;

  @override
  void initState() {
    super.initState();
    routesBloc = context.read<RoutesBloc>();
    _loadRoutes();
  }

  void _loadRoutes() {
    // Convert filtering methods to request parameters
    final params = GetRouteRequestParametersEntity(
      sortingMethod: sortingMethod,
      // Add filter parameters based on filteringMethods if needed
      // This would require mapping RouteFilteringMethod to GetRouteRequestParametersEntity fields
    );
    
    routesBloc.add(RoutesEvent.getRoutes(params: params));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RoutesBloc, RoutesState>(
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                floating: true,
                centerTitle: true,
                title: Text('Routes'),
                actions: [
                  GestureDetector(
                    onTap: () {
                      SortingBottomSheet.show(
                        context,
                        currentSortingMethod: sortingMethod,
                        onSortingMethodSelected: (method) {
                          setState(() {
                            sortingMethod = method;
                          });
                          _loadRoutes();
                        },
                      );
                    },
                    child: Image.asset(
                      'assets/icons/sort.png',
                      height: 22,
                      width: 22,
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      FilteringBottomSheet.show(
                        context,
                        initialFilters: filteringMethods,
                        onApplyFilters: (filters) {
                          setState(() {
                            filteringMethods = filters.isEmpty ? null : filters;
                          });
                          _loadRoutes();
                        },
                      );
                    },
                    child: Image.asset(
                      'assets/icons/filter.png',
                      height: 22,
                      width: 22,
                    ),
                  ),
                  SizedBox(width: 10),
                ],
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(90),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: CustomSearchBar(hintText: 'Find Your Route'),
                      ),
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.only(bottom: 5),
                        height: 30,
                        child: ListView(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          scrollDirection: Axis.horizontal,
                          children: [
                            SortingChip(sortingMethod: sortingMethod),
                            if (filteringMethods != null &&
                                filteringMethods!.isNotEmpty) ...[
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
                                      setState(() {
                                        filteringMethods!.remove(filter);
                                        if (filteringMethods!.isEmpty) {
                                          filteringMethods = null;
                                        }
                                      });
                                      _loadRoutes();
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _buildContent(state),
            ],
          );
        },
      ),
    );
  }

  Widget _buildContent(RoutesState state) {
    switch (state.routesStatus) {
      case StateStatus.loading:
        return SliverFillRemaining(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      
      case StateStatus.error:
        return SliverFillRemaining(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.error_outline,
                  size: 64,
                  color: Theme.of(context).colorScheme.error,
                ),
                SizedBox(height: 16),
                Text(
                  'Error loading routes',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 8),
                if (state.routesErrorMessage != null)
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      state.routesErrorMessage!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _loadRoutes,
                  child: Text('Retry'),
                ),
              ],
            ),
          ),
        );
      
      case StateStatus.success:
        if (state.routes.isEmpty) {
          return SliverFillRemaining(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.route_outlined,
                    size: 64,
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'No routes found',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Try adjusting your filters',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          );
        }
        
        return SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index.isOdd) {
                  return SizedBox(height: 10);
                }
                final itemIndex = index ~/ 2;
                return HorizontalRouteCard(
                  route: state.routes[itemIndex],
                  onPressed: () {},
                );
              },
              childCount: state.routes.length * 2 - 1,
            ),
          ),
        );
      
      case StateStatus.initial:
        return SliverFillRemaining(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
    }
  }
}
