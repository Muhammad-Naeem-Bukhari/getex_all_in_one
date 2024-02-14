import 'package:flutter/material.dart';
import 'package:mvvm/res/colors/app_colors.dart';

class RoundButton extends StatelessWidget {
  const RoundButton(
      {super.key,
      this.loading = false,
      required this.onPressed,
      this.height = 50,
      this.width = 200,
      required this.title,
      this.textColor = AppColors.secondaryLightColor,
      this.buttonColor = AppColors.primaryColor});
  final bool loading;
  final VoidCallback onPressed;
  final double height, width;
  final String title;
  final Color textColor, buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        child: loading
            ? CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(textColor),
              )
            : Text(
                title,
                style: TextStyle(color: textColor),
              ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
        ),
      ),
    );
  }
}
