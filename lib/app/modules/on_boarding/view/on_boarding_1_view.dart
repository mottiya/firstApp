import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megd/app/routes/app_pages.dart';
import 'package:megd/app/components/round_button.dart';
import 'package:megd/helpers/image_helper.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: ImageHelper.getimage('onboarding_1'),
          gaplessPlayback: true,
          width: Get.width,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Get.theme.colorScheme.background,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(45),
                bottom: Radius.zero,
              ),
            ),
            height: 320,
            width: Get.width,
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'get more\nfeatures'.toUpperCase(),
                  style: Get.theme.textTheme.displayMedium!
                      .copyWith(color: Get.theme.colorScheme.onBackground),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 14,
                ),
                Text(
                  'and new emotions from playing\nwith mods'.toLowerCase(),
                  style: Get.theme.textTheme.bodyLarge!
                      .copyWith(color: Get.theme.colorScheme.onBackground),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: RoundButton(
                    text: Text(
                      'Continue'.toUpperCase(),
                      style: Get.theme.textTheme.labelLarge,
                    ),
                    width: 273,
                    height: 57,
                    onTap: () => Get.offAllNamed(Routes.onBoarding_2),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
