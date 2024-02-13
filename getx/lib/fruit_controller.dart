import 'package:get/get.dart';

class FruitController extends GetxController {
  RxList<String> fruits =
      ['Apple', 'Banana', 'Mango', 'Orange', 'Pineapple'].obs;
  List<String> selectedFruits = [];
  RxBool isFaverite = false.obs;

  void makeFavorite(String fruit) {
    if (selectedFruits.contains(fruit)) {
      selectedFruits.remove(fruit);
      isFaverite.value = false;
    } else {
      selectedFruits.add(fruit);
      isFaverite.value = true;
    }
  }
}
