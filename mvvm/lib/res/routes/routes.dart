import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/route_manager.dart';
import 'package:mvvm/view/login/login_view.dart';
import 'package:mvvm/view/splash_screen.dart';

class AppRoutes {
  static appRoute() => [
        GetPage(
            name: '/',
            page: () => const Splash(),
            transitionDuration: const Duration(milliseconds: 500),
            transition: Transition.leftToRight),
        GetPage(
            name: '/login_view',
            page: () => const LoginView(),
            transitionDuration: const Duration(milliseconds: 500),
            transition: Transition.leftToRight)
      ];
}
