import 'package:get/get.dart';

class NotificationController extends GetxController {
  RxBool notification = false.obs;

  void changeNotification(value) {
    notification.value = value;
    print(notification.value);
  }
}
