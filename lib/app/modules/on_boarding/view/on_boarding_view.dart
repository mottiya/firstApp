import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:megd/app/modules/on_boarding/controller/on_boarding_controller.dart';
import 'package:megd/app/routes/app_pages.dart';
import 'package:megd/app/components/round_button.dart';
import 'package:megd/helpers/image_helper.dart';
import 'package:megd/services/conection_service.dart';

class OnBoarding extends GetView<OnBoardingController> {
  OnBoarding({super.key});

  final _connectionService = Get.find<ConnectionService>();

  final _currentRating = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Obx(
          () => Image(
            image: ImageHelper.getimage('onboarding_${controller.step.value}'),
            gaplessPlayback: true,
            width: Get.width,
            fit: BoxFit.cover,
          ),
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
            child: Obx(
              () => Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    (controller.step.value == 1
                            ? 'get more\nfeatures'
                            : 'Do you like\nthe app?')
                        .toUpperCase(),
                    style: Get.theme.textTheme.displayMedium!
                        .copyWith(color: Get.theme.colorScheme.onBackground),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    (controller.step.value == 1
                        ? 'and new emotions from playing\nwith mods'
                        : 'then put a rating and write\na review on Google Play'),
                    style: Get.theme.textTheme.bodyLarge!
                        .copyWith(color: Get.theme.colorScheme.onBackground),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  if (controller.step.value == 2)
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
                      onPressed: () async {
                        final nextStep = controller.step.value + 1;
                        if (nextStep > 2) {
                          if(_currentRating > 3){
                            await InAppReview.instance.openStoreListing();
                          }
                          if (await _connectionService.checkConnection()) {
                            Get.offAllNamed(Routes.articles);
                          } else {
                            Get.offAllNamed(Routes.noConnection);
                          }
                        } else {
                          controller.step.value = nextStep;
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
