import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/src/core/di/injection.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_category_entity.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_type_entity.dart';
import 'package:travel_app/src/features/routes/presentation/widgets/routes_list.dart';
import 'package:travel_app/src/features/routes/presentation/widgets/routes_page_app_bar.dart';
import '../../domain/entities/get_route_request_parameters_entity.dart';
import '../blocs/routes/routes_bloc.dart';

@RoutePage()
class RoutesPage extends StatelessWidget {
  const RoutesPage({super.key, this.category, this.routeType});

  final RouteCategoryEntity? category;
  final RouteTypeEntity? routeType;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<RoutesBloc>()
        ..add(
          RoutesEvent.getRoutes(
            params: GetRouteRequestParametersEntity(
              category: category,
              types: [?routeType],
            ),
          ),
        ),
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
                filteringMethods: state.filteringMethods,
                searchQuery: state.searchQuery,
              ),
              RoutesList(routes: state.routes, status: state.routesStatus),
            ],
          );
        },
      ),
    );
  }
}
