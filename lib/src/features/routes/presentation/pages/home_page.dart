import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/src/config/router/app_router.dart';
import 'package:travel_app/src/core/bloc/state_status.dart';
import 'package:travel_app/src/core/di/injection.dart';
import 'package:travel_app/src/core/utils/extensions/context_extensions.dart';
import 'package:travel_app/src/core/utils/extensions/string_extensions.dart';
import 'package:travel_app/src/features/routes/presentation/blocs/route_types/route_type_bloc.dart';
import 'package:travel_app/src/features/routes/presentation/blocs/routes_by_category/routes_by_category_bloc.dart';
import '../../domain/entities/location_entity.dart';
import '../../domain/entities/route_entity.dart';
import '../../domain/entities/route_type_entity.dart';
import '../widgets/category_section.dart';
import '../widgets/custom_search_bar.dart';
import '../widgets/location_button.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<RouteTypeBloc>()),
        BlocProvider(create: (context) => sl<RoutesByCategoryBloc>()),
        BlocProvider(create: (context) => sl<RoutesByCategoryBloc>()),
      ],
      child: HomePageContent(),
    );
  }
}

class HomePageContent extends StatefulWidget {
  const HomePageContent({super.key});

  @override
  State<HomePageContent> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageContent>
    with TickerProviderStateMixin {
  final _searchController = TextEditingController();
  TabController? _categoriesTabbarController;
  late final RouteTypeBloc routeTypeBloc;
  late final RoutesByCategoryBloc routesByCategoryBloc;
  RouteTypeEntity? _selectedType;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      routeTypeBloc = context.read<RouteTypeBloc>();
      routesByCategoryBloc = context.read<RoutesByCategoryBloc>();
      // Trigger initial data load
      routeTypeBloc.add(GetRouteTypesEvent());
      routesByCategoryBloc.add(RoutesByCategoryEvent.loadAll());
    });
  }

  @override
  void dispose() {
    _categoriesTabbarController?.dispose();
    _searchController.dispose();
    super.dispose();
  }

  Future<void> onRefresh() async {
    // Trigger data refresh
    routeTypeBloc.add(GetRouteTypesEvent());
    routesByCategoryBloc.add(RoutesByCategoryEvent.loadAll(type: _selectedType));

    // Wait for the state to complete (success or failure)
    await routeTypeBloc.stream.firstWhere(
      (state) =>
          state.routeTypesStatus == StateStatus.success ||
          state.routeTypesStatus == StateStatus.error,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              Align(
                alignment: .topCenter,
                child: LocationButton(onTap: () {}, text: 'Almaty, Kazakstan'),
              ),
            ],
            title: Column(
              crossAxisAlignment: .start,
              children: [
                Text('Explore', style: context.textTheme.labelLarge),
                Text('Aspen', style: context.textTheme.displayMedium),
              ],
            ),
            centerTitle: false,
            // bottom: PreferredSize(
            //   preferredSize: Size.fromHeight(60),
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 16),
            //     child: CustomSearchBar(
            //       hintText: 'Find things to do',
            //       controller: _searchController,
            //     ),
            //   ),
            // ),
          ),
          CupertinoSliverRefreshControl(onRefresh: onRefresh),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          BlocConsumer<RouteTypeBloc, RouteTypeState>(
            listener: (context, state) {
              // Initialize TabController when route types are loaded
              if (state.routeTypes != null &&
                  state.routeTypesStatus == StateStatus.success &&
                  _categoriesTabbarController == null) {
                _categoriesTabbarController = TabController(
                  length: state.routeTypes!.length + 1,
                  vsync: this,
                );

                // Add listener to update _selectedType when tab changes
                _categoriesTabbarController!.addListener(() {
                  if (!_categoriesTabbarController!.indexIsChanging) {
                    final index = _categoriesTabbarController!.index;
                    // If "All" tab (index 0), set to null
                    if (index == 0) {
                      _selectedType = null;
                    } else {
                      // Otherwise, get the route type at index - 1
                      _selectedType = state.routeTypes!.elementAt(index - 1);
                    }
                    context.read<RoutesByCategoryBloc>().add(
                      .loadAll(type: _selectedType),
                    );
                  }
                });
              }
            },
            builder: (context, state) {
              // Show error state
              if (state.routeTypesStatus == StateStatus.error) {
                return SliverToBoxAdapter(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        state.routeTypeErrorMessage ??
                            'Failed to load categories',
                        style: TextStyle(color: context.colorScheme.error),
                      ),
                    ),
                  ),
                );
              }

              // Show TabBar when data is available
              if (_categoriesTabbarController != null &&
                  state.routeTypes != null) {
                return SliverToBoxAdapter(
                  child: TabBar(
                    padding: .symmetric(horizontal: 16),
                    labelStyle: context.textTheme.labelLarge?.copyWith(
                      color: context.colorScheme.onPrimaryContainer,
                    ),
                    isScrollable: true,
                    dividerHeight: 0,
                    tabAlignment: .start,
                    indicator: BoxDecoration(
                      borderRadius: .circular(16),
                      color: context.colorScheme.primaryContainer,
                    ),
                    indicatorSize: .tab,
                    splashBorderRadius: .circular(16),
                    tabs: [
                      Tab(text: 'All'),
                      ...state.routeTypes
                              ?.map((type) => Tab(text: type.name.capitalize()))
                              .toList() ??
                          [],
                    ],
                    controller: _categoriesTabbarController,
                  ),
                );
              }
              return SliverToBoxAdapter(child: SizedBox());
            },
          ),
          SliverToBoxAdapter(child: SizedBox(height: 15)),
          BlocBuilder<RoutesByCategoryBloc, RoutesByCategoryState>(
            buildWhen: (previous, current) =>
                previous.popularRoutes != current.popularRoutes ||
                previous.isLoadingPopular != current.isLoadingPopular ||
                previous.popularError != current.popularError,
            builder: (context, state) {
              if (state.popularError != null) {
                return SliverToBoxAdapter(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        state.popularError!,
                        style: TextStyle(color: context.colorScheme.error),
                      ),
                    ),
                  ),
                );
              }

              return SliverToBoxAdapter(
                child: CategorySection(
                  isLoading: state.isLoadingPopular,
                  onSeeAll: () =>
                      context.pushRoute(RoutesRoute(category: .popular)),
                  routes: state.popularRoutes,
                  title: 'Popular',
                ),
              );
            },
          ),
          SliverToBoxAdapter(child: SizedBox(height: 15)),
          BlocBuilder<RoutesByCategoryBloc, RoutesByCategoryState>(
            buildWhen: (previous, current) =>
                previous.recommendedRoutes != current.recommendedRoutes ||
                previous.isLoadingRecommended != current.isLoadingRecommended ||
                previous.recommendedError != current.recommendedError,
            builder: (context, state) {
              if (state.recommendedError != null) {
                return SliverToBoxAdapter(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        state.recommendedError!,
                        style: TextStyle(color: context.colorScheme.error),
                      ),
                    ),
                  ),
                );
              }

              return SliverToBoxAdapter(
                child: CategorySection(
                  isLoading: state.isLoadingRecommended,
                  routes: state.recommendedRoutes,
                  title: 'Recommend',
                ),
              );
            },
          ),
          SliverToBoxAdapter(child: SizedBox(height: 120)),
        ],
      ),
    );
  }
}
