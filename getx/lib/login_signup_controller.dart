import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Login extends GetxController {
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;

  RxBool isLoading = false.obs;

  Future<void> login() async {
    try {
      isLoading.value = true;
      http.Response response =
          await http.post(Uri.parse('https://reqres.in/api/login'), body: {
        'email': emailController.value.text,
        'password': passwordController.value.text,
      });
      print(response.body);
      Map<String, dynamic> responseData = jsonDecode(response.body);
      print(responseData);
      if (response.statusCode == 200) {
        isLoading.value = false;
        Get.snackbar('Success', 'Login Success');
      } else {
        isLoading.value = false;
        Get.snackbar('Error', 'Login Failed');
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar('Error', e.toString());
    }
  }
}
