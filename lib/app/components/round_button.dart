import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    super.key,
    this.onPressed,
    required this.width,
    required this.height,
    required this.text,
    this.child,
    this.color,
  });

  final VoidCallback? onPressed;
  final double width;
  final double height;
  final Text text;
  final Widget? child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color ?? Get.theme.colorScheme.primary,
        borderRadius: const BorderRadius.all(Radius.circular(35)),
      ),
      clipBehavior: Clip.hardEdge,
      alignment: Alignment.center,
      child: Material(
        color: Colors.transparent,
        child: SizedBox(
          child: InkWell(
            onTap: onPressed,
            child: Center(
              child: FittedBox(
                fit: BoxFit.cover,
                child: text,
                ),
              ),
            ),
          ),
        ),
      );
  }
}
