import 'package:flutter/material.dart';
import 'package:rv_app/config/theme.dart';
import 'package:rv_app/screens/index_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemeCustom.lightTheme,
      darkTheme: AppThemeCustom.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: IndexScreen(),
    );
  }
}
