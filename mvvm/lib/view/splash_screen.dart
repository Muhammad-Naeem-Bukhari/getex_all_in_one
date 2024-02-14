import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

import 'package:mvvm/data/app_exeptions.dart';
import 'package:mvvm/res/assets/imaga_assets.dart';
import 'package:mvvm/res/getx_localization/languages.dart';
import 'package:mvvm/utils/component_widgets/general_exception.dart';
import 'package:mvvm/utils/component_widgets/internet_exception_widget.dart';
import 'package:mvvm/utils/component_widgets/round_button.dart';
import 'package:mvvm/view_models/services/splash_services.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final SplashServices _splashServices = SplashServices();

  @override
  void initState() {
    _splashServices.isUserLoggedIn();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.teal,
      height: double.infinity,
      width: double.infinity,
      child: Center(
        child: Text(
          "welcome".tr,
          style: TextStyle(fontSize: 40),
        ),
      ),
    ));
  }
}
