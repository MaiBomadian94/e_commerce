import 'package:flutter/material.dart';
import 'core/config/application_theme_manager.dart';
import 'core/config/page_routes_name.dart';
import 'core/config/routes.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ApplicationThemeManager.themeData,
      initialRoute: PageRoutesName.initial,
      onGenerateRoute: Routes.onGenerate,
      navigatorKey: navigatorKey,
    );
  }
}
