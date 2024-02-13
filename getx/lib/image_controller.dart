import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageController extends GetxController {
  RxString imagePath = ''.obs;

  Future<void> chooseImage() async {
    ImagePicker imagePicker = ImagePicker();

    if (imagePath.value.isEmpty) {
      print('object');
      var image = await imagePicker.pickImage(source: ImageSource.camera);
      if (image != null) {
        imagePath.value = image.path.toString();
      }
    }
  }
}
