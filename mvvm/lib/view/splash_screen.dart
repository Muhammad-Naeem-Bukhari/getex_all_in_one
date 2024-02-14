import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

import 'package:mvvm/data/app_exeptions.dart';
import 'package:mvvm/res/assets/imaga_assets.dart';
import 'package:mvvm/res/getx_localization/languages.dart';
import 'package:mvvm/utils/component_widgets/general_exception.dart';
import 'package:mvvm/utils/component_widgets/internet_exception_widget.dart';
import 'package:mvvm/utils/component_widgets/round_button.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('email_hint'.tr),
      ),
      body: RoundButton(
        onPressed: () {},
        title: 'Click me',
        width: double.infinity,
        height: 100,
        textColor: Colors.white,
      ),
    );
  }
}
