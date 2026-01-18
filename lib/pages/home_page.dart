import 'package:flutter/material.dart';
import 'package:travel_app/context_extensions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text('Explore', style: context.textTheme.labelLarge,),
        )
      ],
     ),
    );
  }
}