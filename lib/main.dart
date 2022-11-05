// ignore_for_file: unused_import
import 'package:fitness_plus/screens/home_page.dart';
import 'package:fitness_plus/screens/login.dart';
import 'package:fitness_plus/screens/root_app.dart';
import 'package:fitness_plus/screens/today_target_detail_page.dart';
import 'package:fitness_plus/screens/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'router.dart' as router;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget!),
        breakpoints: const [
          ResponsiveBreakpoint.resize(350, name: MOBILE),
          ResponsiveBreakpoint.autoScale(600, name: TABLET),
          ResponsiveBreakpoint.resize(800, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
        ],
      ),
      title: 'Flutter Responsive Framework',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      onGenerateRoute: router.generateRoute,
    );
  }
}
