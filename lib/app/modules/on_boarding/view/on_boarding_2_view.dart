import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:megd/app/routes/app_pages.dart';
import 'package:megd/app/components/round_button.dart';
import 'package:megd/helpers/image_helper.dart';

class OnBoarding2 extends StatelessWidget {
  OnBoarding2({super.key});

  final _currentRating = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: ImageHelper.getimage('onboarding_2'),
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
                  'Do you like\nthe app?'.toUpperCase(),
                  style: Get.theme.textTheme.displayMedium!
                      .copyWith(color: Get.theme.colorScheme.onBackground),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 14,
                ),
                Text(
                  'then put a rating and write\na review on Google Play',
                  style: Get.theme.textTheme.bodyLarge!
                      .copyWith(color: Get.theme.colorScheme.onBackground),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                RatingBar.builder(
                  itemSize: 45,
                  initialRating: 0,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                  onRatingUpdate: (rating) =>
                      _currentRating.value = rating.toInt(),
                  itemBuilder: (context, idx) => Icon(
                    Icons.star,
                    opticalSize: 45,
                    color: Get.theme.colorScheme.primaryContainer,
                  ),
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
                    onTap: () => Get.offAllNamed(Routes.mods),
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
