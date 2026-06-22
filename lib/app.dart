import 'package:byte_store/core/theme/app_theme.dart';
import 'package:byte_store/features/home/presentations/screen/home_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Byte Store',
      darkTheme: AppTheme.darkTheme,
      themeMode: .dark,
      home: const Scaffold(body: SafeArea(child: HomeScreen())),
    );
  }
}
