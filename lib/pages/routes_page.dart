import 'package:flutter/material.dart';

class RoutesPage extends StatefulWidget {
  const RoutesPage({super.key, this.category});

  final String? category;

  @override
  State<RoutesPage> createState() => _RoutesPageState();
}

class _RoutesPageState extends State<RoutesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Routes'),
      ),
    );
  }
}
