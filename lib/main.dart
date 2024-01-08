// main.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screen/Home.dart';
import 'theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      // Yangi ThemeProvider obyektini yaratish.
      create: (context) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Tema uchun o'zgartiruvchini ishlatish uchun providerni qo'shish.
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          // Dark mode holati uchun rangni o'zgartirish.
          backgroundColor: Provider.of<ThemeProvider>(context).isDarkMode
              ? Colors.black
              : Colors.deepOrange,
        ),
        useMaterial3: true,
      ),
      // Light mode temasi (kommentdan chiqarilgan).
      // theme: ThemeData.light(),

      // Dark mode temasi.
      darkTheme: ThemeData.dark(),

      // Joriy dark mode holatiga bog'liq qanday tema ishlatish kerakligini aniqlash.
      themeMode: Provider.of<ThemeProvider>(context).isDarkMode
          ? ThemeMode.dark
          : ThemeMode.light,

      // Asosiy ekranni ko'rsatish uchun widget.
      home: MyHomePage(),
    );
  }
}
