import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:mvvm/view/splash_screen.dart';

class AppRoutes {
  static appRoute() => [
        GetPage(
          name: '/',
          page: () => const Splash(),
        ),
      ];
}
