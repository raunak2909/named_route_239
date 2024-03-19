import 'package:flutter/material.dart';
import 'package:named_route_239/app_routes/routes.dart';
import 'package:named_route_239/screens/home_page.dart';
import 'package:named_route_239/screens/profile_page.dart';
import 'package:named_route_239/screens/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.SPLASH_PAGE,
      //'yourRouteName' : (context) => yourPage(
      routes: routesMap(),
      //home: SplashScreen(),
    );
  }
}

