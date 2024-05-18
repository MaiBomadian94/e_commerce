import 'package:e_commerce_app/core/config/page_routes_name.dart';
import 'package:e_commerce_app/features/favorite/pages/favorite_view.dart';
import 'package:e_commerce_app/features/register/pages/register_view.dart';
import 'package:e_commerce_app/features/user_information/pages/user_view.dart';
import 'package:e_commerce_app/features/layout.dart';
import 'package:flutter/material.dart';

import '../../features/category/pages/category_view.dart';
import '../../features/home/pages/home_view.dart';
import '../../features/login/pages/login_view.dart';
import '../../features/splash/pages/splash_view.dart';

class Routes {
  static Route<dynamic> onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case PageRoutesName.initial:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );

      case PageRoutesName.login:
        return MaterialPageRoute(
          builder: (context) => const LoginView(),
          settings: settings,
        );
      case PageRoutesName.home:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
          settings: settings,
        );
      case PageRoutesName.registration:
        return MaterialPageRoute(
          builder: (context) => const RegisterView(),
          settings: settings,
        );
      case PageRoutesName.category:
        return MaterialPageRoute(
          builder: (context) => const CategoryView(),
          settings: settings,
        );
      case PageRoutesName.profile:
        return MaterialPageRoute(
          builder: (context) => const UserView(),
        );
      case PageRoutesName.favorite:
        return MaterialPageRoute(
          builder: (context) => const FavoriteView(),
        );
      case PageRoutesName.layout:
        return MaterialPageRoute(
          builder: (context) => const LayoutView(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );
    }
  }
}
