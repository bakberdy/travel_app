import 'package:flutter/material.dart';
import 'package:travel_app/context_extensions.dart';
import 'package:travel_app/widgets/custom_search_bar.dart';
import 'package:travel_app/widgets/location_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _searchController = TextEditingController();
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
                onClear: () {
                  _searchController.clear();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
