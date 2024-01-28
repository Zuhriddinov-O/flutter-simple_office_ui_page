import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          bannerTheme:
              const MaterialBannerThemeData(backgroundColor: Colors.red),
          useMaterial3: true,
          colorSchemeSeed: const Color(0xFF0F3774)),
      home: const HomePage(),
    );
  }
}
