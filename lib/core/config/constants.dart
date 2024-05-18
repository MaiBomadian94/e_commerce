import 'package:e_commerce_app/main.dart';
import 'package:flutter/material.dart';

class Constants {
  static var theme = Theme.of(navigatorKey.currentState!.context);
  static var mediaQuery =
      MediaQuery.of(navigatorKey.currentState!.context).size;
  static const String baseURL = 'https://route-ecommerce.onrender.com';
}
