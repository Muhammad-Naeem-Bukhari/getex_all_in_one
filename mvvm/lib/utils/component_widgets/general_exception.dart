import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class GeneralExceptionWidget extends StatefulWidget {
  const GeneralExceptionWidget({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  State<GeneralExceptionWidget> createState() => _GeneralExceptionWidgetState();
}

class _GeneralExceptionWidgetState extends State<GeneralExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.cloud_off,
            size: 100,
            color: Colors.red,
          ),
          Text(
            'general_exception'.tr,
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
