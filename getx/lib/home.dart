// make Home screen with app bar and scaffold
// writhe getx tutorial in app bar

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/fruit_controller.dart';
import 'package:getx/image_controller.dart';
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
  final ImageController imageController = Get.put(ImageController());

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
            Center(
              child: Obx(
                () => CircleAvatar(
                  radius: 70,
                  backgroundImage: imageController.imagePath.value.isNotEmpty
                      ? FileImage(
                          File(imageController.imagePath.value),
                        )
                      : null,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                imageController.chooseImage();
              },
              child: const Text('Select Image'),
            ),
          ],
        ));
  }
}
