import 'package:flutter/material.dart';
import 'package:travel_app/pages/home_page.dart';
import 'package:travel_app/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
