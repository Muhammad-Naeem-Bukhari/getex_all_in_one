import 'package:get/get.dart';

class OpacityController extends GetxController {
  RxDouble opacity = 1.0.obs;

  void changeOpacity(value) {
    opacity.value = value;
  }
}
