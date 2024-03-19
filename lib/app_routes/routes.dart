import 'package:flutter/cupertino.dart';
import 'package:named_route_239/screens/settings_page.dart';

import '../screens/home_page.dart';
import '../screens/profile_page.dart';
import '../screens/splash_page.dart';

class AppRoutes {
  static const String SPLASH_PAGE = "/";
  static const String HOME_PAGE = "/home";
  static const String PROFILE_PAGE = "/profile";
  static const String SETTING_PAGE = "/settings";
}

Map<String, Widget Function(BuildContext)> routesMap() => {
      AppRoutes.SPLASH_PAGE: (_) => SplashScreen(),
      AppRoutes.HOME_PAGE: (_) => HomeScreen(),
      AppRoutes.PROFILE_PAGE: (_) => ProfileScreen(),
      AppRoutes.SETTING_PAGE: (_) => SettingScreen(),
    };
