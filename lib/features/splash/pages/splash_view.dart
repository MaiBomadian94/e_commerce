
import 'package:flutter/material.dart';

import '../../../core/config/page_routes_name.dart';
import '../../../main.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () => navigatorKey.currentState!.pushReplacementNamed(
        PageRoutesName.login,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("asset/images/splash_screen.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
