import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/src/config/router/app_router.dart';
import 'package:travel_app/src/core/utils/extensions/context_extensions.dart';
import '../../domain/entities/location_entity.dart';
import '../../domain/entities/route_entity.dart';
import 'routes_page.dart';
import '../types/route_type.dart' as route_type;
import '../widgets/category_section.dart';
import '../widgets/custom_search_bar.dart';
import '../widgets/location_button.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final _searchController = TextEditingController();
  late final TabController _categoriesTabbarController;
  @override
  void initState() {
    _categoriesTabbarController = TabController(length: route_type.RouteType.values.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _categoriesTabbarController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  final sampleRoute = RouteEntity(
    title: 'ЧЁРНЫЙ ВОДОПАД',
    location: LocationEntity(name: 'Урочище Ворота Туюк-Су', lat: 0, long: 0),
    coordinates: [],
    description:
        'Чёрный Водопад(Кара Су) находится недалеко от альплагеря "Туюк-Су", поэтому поход к нему является лёгким, прогулочным и подходит для семейного отдыха. Но надо учесть, что водопад сезонный и вода в нём появляется только лишь во время таяния снега. В зимнее время подход осложнён отсутствием тропы, высоким уровнем снега и лавиноопасностью. Рекомендуемый сезон похода к водопаду май-ноябрь.',
    direction: 'Заилийский Алатау',
    gorge: 'Малое Алматинское ущелье (МАУ)',
    difficulty: .medium,
    distanceKm: 10.5,
    imageUrl: 'https://morena.kz/foto/allfoto/ver%20mau/ver%20mau%20(3).jpg',
  );

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
          ),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverPadding(
            padding: .symmetric(horizontal: 16),
            sliver: SliverToBoxAdapter(
              child: CustomSearchBar(
                hintText: 'Find things to do',
                controller: _searchController,
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
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
              tabs: route_type.RouteType.values.map((type) {
                final name = type.name[0].toUpperCase() + type.name.substring(1);
                return Tab(text: name);
              }).toList(),
              controller: _categoriesTabbarController,
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 15)),
          SliverToBoxAdapter(
            child: CategorySection(
              onSeeAll: () => context.pushRoute(RoutesRoute(category: 'Popular')),
              routes: [sampleRoute, sampleRoute, sampleRoute],
              title: 'Popular',
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 15)),
          SliverToBoxAdapter(
            child: CategorySection(
              routes: [sampleRoute, sampleRoute, sampleRoute],
              title: 'Recommend',
            ),
          ),
        ],
      ),
    );
  }
}
