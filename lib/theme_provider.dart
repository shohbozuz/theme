// theme_provider.dart

// Ushbu sinf o'zgartiruvchilarni boshqarish uchun ChangeNotifier patternidan foydalanadi.
import 'package:flutter/cupertino.dart';

class ThemeProvider with ChangeNotifier {
  // Hozirdagi dark mode holatini saqlash uchun maxfiy o'zgaruvchisi.
  bool _isDarkMode = false;

  // Joriy dark mode holatini qaytaruvchi getter.
  bool get isDarkMode => _isDarkMode;

  // Temani dark va yorqin rejimlari orasida almashish uchun metod.
  void toggleTheme() {
    // Hozirdagi dark mode holatini ortga aylantirish.
    _isDarkMode = !_isDarkMode;

    // Barcha tinglovchilarga (o'rdagi widgetlarga) tema o'zgarganligini xabar berish.
    notifyListeners();
  }
}
