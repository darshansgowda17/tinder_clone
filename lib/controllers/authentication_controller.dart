import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AuthenticationController extends GetxController
{
  static AuthenticationController authController = Get.find();

  Rx<File?> pickedFile = null.obs;
  File? get profileImage => pickedFile.value;

  pickImageFileFromGallery() async
  {
    final imageFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if(imageFile != null)
      {
        Get.snackbar("Profile Image", "Image uploaded succesfully");
      }

    pickedFile = Rx<File?>(File(imageFile!.path));
  }

  captureImageFileFromCamera() async
  {
    final imageFile = await ImagePicker().pickImage(source: ImageSource.camera);

    if(imageFile != null)
    {
      Get.snackbar("Profile Image", "Image uploaded succesfully");
    }

    pickedFile = Rx<File?>(File(imageFile!.path));
  }
}