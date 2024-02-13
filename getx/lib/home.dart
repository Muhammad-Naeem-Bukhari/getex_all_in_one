// make Home screen with app bar and scaffold
// writhe getx tutorial in app bar

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/fruit_controller.dart';
import 'package:getx/image_controller.dart';
import 'package:getx/login_signup_controller.dart';
import 'package:getx/notification_controller.dart';
import 'package:getx/opacity_controller.dart';

import 'counterf_controlle.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // initialize countercontroller
  final Login loginController = Get.put(Login());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GetX Tutorial'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // email and password textfield fro login
            TextField(
              controller: loginController.emailController.value,
              decoration: const InputDecoration(
                hintText: 'Enter Email',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: loginController.passwordController.value,
              decoration: const InputDecoration(
                hintText: 'Enter Password',
              ),
              obscureText: true,
            ),
            TextButton(
              onPressed: () {
                loginController.login();
              },
              child: Obx(
                () => loginController.isLoading.value
                    ? CircularProgressIndicator()
                    : Text('Login'),
              ),
            ),
          ],
        ));
  }
}
