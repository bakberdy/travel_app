import 'package:flutter/material.dart';
import 'package:travel_app/context_extensions.dart';
import 'package:travel_app/entities/location_entity.dart';
import 'package:travel_app/entities/route_entity.dart';
import 'package:travel_app/widgets/category_header.dart';
import 'package:travel_app/widgets/custom_search_bar.dart';
import 'package:travel_app/widgets/labeled_icon.dart';
import 'package:travel_app/widgets/location_button.dart';

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
    _categoriesTabbarController = TabController(length: 4, vsync: this);
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
              tabs: [
                Tab(text: 'Peak'),
                Tab(text: 'Waterfall'),
                Tab(text: 'Lake'),
                Tab(text: 'Route'),
              ],
              controller: _categoriesTabbarController,
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 15)),
          SliverPadding(
            sliver: SliverToBoxAdapter(
              child: CategoryHeader(
                title: 'Popular',
                onSeeAllTapped: () {
                  debugPrint("Popular see all tapped");
                },
              ),
            ),
            padding: .symmetric(horizontal: 16),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 280,
              child: ListView.separated(
                padding: .symmetric(horizontal: 16),
                scrollDirection: .horizontal,
                itemBuilder: (context, index) {
                  return RouteCard(route: sampleRoute);
                },
                separatorBuilder: (BuildContext context, int index) =>
                    SizedBox(width: 10),
                itemCount: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RouteCard extends StatelessWidget {
  const RouteCard({
    super.key,
    required this.route,
  });

  final RouteEntity route;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: .hardEdge,
      width: 170,
      height: 280,
      decoration: BoxDecoration(
        borderRadius: .circular(16),
        border: BoxBorder.all(
          width: 1,
          color: context.colorScheme.outline,
        ),
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          SizedBox(
            height: 150,
            child: Image.network(
              'https://morena.kz/foto/allfoto/ver%20mau/ver%20mau%20(3).jpg',
              fit: .cover,
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  route.title,
                  style: context.textTheme.titleMedium,
                ),
                SizedBox(height: 5),
    
                Container(
                  padding: .symmetric(vertical: 2, horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: .circular(8),
                    color: Colors.amber,
                  ),
                  child: Text(
                    'medium',
                    overflow: .ellipsis,
                    style: context.textTheme.labelSmall,
                  ),
                ),
                SizedBox(height: 3),
                LabeledIcon(
                  label:
                      route.location?.name ??
                      route.gorge,
                  icon: Image.asset(
                    'assets/icons/location_point.png',
                  ),
                ),
                SizedBox(height: 5),
                LabeledIcon(
                  label: '${route.distanceKm} km',
                  icon: Image.asset('assets/icons/route.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
