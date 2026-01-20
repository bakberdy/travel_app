import 'package:flutter/material.dart';
import 'package:travel_app/context_extensions.dart';
import 'package:travel_app/widgets/custom_search_bar.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              Align(
                alignment: .topCenter,
                child: Builder(
                  builder: (context) {
                    return LocationButton(
                      onTap: () {},
                      text: 'Almaty, Kazakstan',
                    );
                  },
                ),
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
                Tab(text: 'Hotels'),
                Tab(text: 'Food'),
                Tab(text: 'Adventure'),
                Tab(text: 'Cities'),
              ],
              controller: _categoriesTabbarController,
            ),
          ),
        ],
      ),
    );
  }
}
