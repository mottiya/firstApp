import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    super.key,
    this.onTap,
    required this.width,
    required this.height,
    required this.text,
    this.child,
  });

  final VoidCallback? onTap;
  final double width;
  final double height;
  final Text text;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Get.theme.colorScheme.primary,
          borderRadius: const BorderRadius.all(Radius.circular(35)),
        ),
        child: Center(child: text),
      ),
    );
  }
}
