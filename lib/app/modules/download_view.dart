import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megd/helpers/image_helper.dart';

class Download extends StatelessWidget {
  const Download({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ImageHelper.getimage('background'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              SizedBox(
                height: 58,
                width: 58,
                child: CircularProgressIndicator(
                  color: Get.theme.colorScheme.onPrimary,
                ),
              ),
              Text(
                'Your file is being downloaded.\nPlease wait',
                style: Get.theme.textTheme.titleSmall,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
            ],
          ),
        ));
  }
}
