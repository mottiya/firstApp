import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megd/helpers/image_helper.dart';

class NoConection extends StatelessWidget {
  const NoConection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: ImageHelper.getimage('background'),
        fit: BoxFit.fill,
      )),
      child: Center(
          child: Text(
            'Please check your connection',
            style: Get.theme.textTheme.titleSmall!
              .copyWith(color: Get.theme.colorScheme.onPrimary),
              textAlign: TextAlign.center,
      )),
    );
  }
}
