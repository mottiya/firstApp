import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megd/helpers/image_helper.dart';
import 'package:megd/services/conection_service.dart';
import 'package:megd/theme/theme.dart';

import '../routes/app_pages.dart';

class SplashView extends StatelessWidget {
  SplashView({super.key}) {
    Timer(const Duration(seconds: 2), () async {
      if(await ConnectionService().checkConnection()) {
        Get.offAllNamed(Routes.onBoarding);
      }
      else {
        Get.offAllNamed(Routes.noConnection);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ImageHelper.getimage('splash_image'),
          fit: BoxFit.fill,
        ),
      ),
      height: Get.height,
      width: Get.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(
                'minecraft'.toUpperCase(),
                style: DefaultTheme.themeData.textTheme.displayLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'mods'.toUpperCase(),
                style: DefaultTheme.themeData.textTheme.titleMedium,
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          const SizedBox(
            height: 30,
            width: 30,
            child: CircularProgressIndicator(
              color: Colors.white,
              strokeWidth: 3,
            ),
          ),
          
        ],
      ),
    );
  }
}
