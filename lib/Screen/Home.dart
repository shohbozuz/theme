// my_home_page.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../theme_provider.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(// Light mode uchun rang
        title: const Text('Flutter Dark Mode Example'),
      ),
      body: Center(
        child: Text(
          'Welcome to Flutter Dark Mode!',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
        },
        child: Provider.of<ThemeProvider>(context).isDarkMode
            ? Icon(Icons.brightness_7) // Dark mode uchun icon
            : Icon(Icons.brightness_6), // Light mode uchun icon
      ),
    );
  }
}