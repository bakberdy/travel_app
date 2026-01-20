import 'package:flutter/material.dart';
import 'package:travel_app/entities/location_entity.dart';
import 'package:travel_app/entities/route_entity.dart';
import 'package:travel_app/types/route_filtering_method.dart';
import 'package:travel_app/types/route_sorting_method.dart';
import 'package:travel_app/widgets/custom_search_bar.dart';
import 'package:travel_app/widgets/filter_chip.dart';
import 'package:travel_app/widgets/horizontal_route_card.dart';
import 'package:travel_app/widgets/sorting_bottom_sheet.dart';
import 'package:travel_app/widgets/sorting_chip.dart';

class RoutesPage extends StatefulWidget {
  const RoutesPage({super.key, this.category});

  final String? category;

  @override
  State<RoutesPage> createState() => _RoutesPageState();
}

class _RoutesPageState extends State<RoutesPage> {
  late final List<RouteEntity> routes;

  RouteSortingMethod sortingMethod = RouteSortingMethod.distanceAscending;
  List<RouteFilteringMethod>? filteringMethods = [
    RouteFilteringMethod.byDifficulty(difficulty: .hard),
    RouteFilteringMethod.byDistanceRange(minKm: 1.3, maxKm: 10.3),
    RouteFilteringMethod.byType(type: 'Lake'),
  ];

  @override
  void initState() {
    super.initState();
    routes = List.generate(
      10,
      (index) => RouteEntity(
        title: 'ЧЁРНЫЙ ВОДОПАД',
        location: LocationEntity(
          name: 'Урочище Ворота Туюк-Су',
          lat: 0,
          long: 0,
        ),
        coordinates: [],
        description:
            'Чёрный Водопад(Кара Су) находится недалеко от альплагеря "Туюк-Су", поэтому поход к нему является лёгким, прогулочным и подходит для семейного отдыха. Но надо учесть, что водопад сезонный и вода в нём появляется только лишь во время таяния снега. В зимнее время подход осложнён отсутствием тропы, высоким уровнем снега и лавиноопасностью. Рекомендуемый сезон похода к водопаду май-ноябрь.',
        direction: 'Заилийский Алатау',
        gorge: 'Малое Алматинское ущелье (МАУ)',
        difficulty: .medium,
        distanceKm: 10.5,
        imageUrl:
            'https://morena.kz/foto/allfoto/ver%20mau/ver%20mau%20(3).jpg',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // pinned: true,
            floating: true,
            snap: true,
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
                    },
                  );
                },
                child: Image.asset('assets/icons/sort.png', height: 22, width: 22),
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: () {},
                child: Image.asset('assets/icons/filter.png', height: 22, width: 22),
              ),
              SizedBox(width: 10),
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(90),
              child: Column(
                children: [
                  Padding(padding: .symmetric(horizontal: 16),
                  child: CustomSearchBar(
                    hintText: 'Find Your Route',
                  )),
                  SizedBox(height: 10,),
                  Container(
                    padding: .only(bottom: 5),
                    height: 30,
                    child: ListView(
                      padding: .symmetric(horizontal: 16),
                      scrollDirection: .horizontal,
                      children: [
                        SortingChip(
                          sortingMethod: sortingMethod,

                        ),
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
                                onRemoveTap: () {},
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
          SliverPadding(
            padding: .symmetric(horizontal: 16, vertical: 20),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  if (index.isOdd) {
                    return SizedBox(height: 10);
                  }
                  final itemIndex = index ~/ 2;
                  return HorizontalRouteCard(
                    route: routes[itemIndex],
                    onPressed: () {},
                  );
                },
                childCount: routes.length * 2 - 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
