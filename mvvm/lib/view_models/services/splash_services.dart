import 'dart:async';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

class SplashServices {
  void isUserLoggedIn() {
    // rout to loginview after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Get.toNamed('/login_view');
    });
  }
}
