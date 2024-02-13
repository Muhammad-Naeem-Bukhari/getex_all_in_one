import 'package:get/get.dart';

class ConunterController extends GetxController {
  RxInt count = 0.obs;

  // increment count
  void increment() => count++;
}
