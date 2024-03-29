import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:mvvm/res/getx_localization/languages.dart';
import 'package:mvvm/res/routes/routes.dart';
import 'package:mvvm/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      // home: const Splash(),
      translations: Languages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      getPages: AppRoutes.appRoute(),
    );
  }
}
