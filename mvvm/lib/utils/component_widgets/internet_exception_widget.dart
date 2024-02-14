import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class InternetExceptionWidget extends StatefulWidget {
  const InternetExceptionWidget({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  State<InternetExceptionWidget> createState() =>
      _InternetExceptionWidgetState();
}

class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.wifi_off,
            size: 100,
            color: Colors.red,
          ),
          Text(
            'no_internet'.tr,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: widget.onPressed,
            child: Text('retry'.tr),
          )
        ],
      ),
    );
  }
}
