import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megd/app/components/round_button.dart';
import 'package:megd/app/routes/app_pages.dart';
import 'package:megd/helpers/image_helper.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ImageHelper.getimage('background'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          leading: IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () => Get.back(),
          ),
          iconTheme: IconThemeData(
            color: Get.theme.colorScheme.onBackground,
            size: 20,
          ),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              RoundButton(
                width: 328,
                height: 57,
                text: Text(
                  'Terms of use'.toUpperCase(),
                  style: Get.theme.textTheme.labelLarge,
                ),
                onPressed: () => Get.toNamed(Routes.terms),
              ),
              const SizedBox(
                height: 10,
              ),
              RoundButton(
                width: 328,
                height: 57,
                text: Text(
                  'Privacy policy'.toUpperCase(),
                  style: Get.theme.textTheme.labelLarge,
                ),
                onPressed: () => Get.toNamed(Routes.privacy),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
