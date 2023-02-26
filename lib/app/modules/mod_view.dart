import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megd/app/components/round_button.dart';
import 'package:megd/app/routes/app_pages.dart';
import 'package:megd/helpers/image_helper.dart';

class Mod extends StatelessWidget {
  const Mod({super.key});

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
          titleTextStyle: Get.theme.textTheme.displaySmall!.copyWith(
            color: Get.theme.colorScheme.onBackground,
          ),
          centerTitle: true,
          title: Text(
            'Name of Mod'.toUpperCase(),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () => Get.back(),
          ),
          iconTheme: IconThemeData(
            color: Get.theme.colorScheme.onBackground,
            size: 20,
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 163,
              width: Get.width,
              decoration: BoxDecoration(
                color: Get.theme.colorScheme.primary,
              ),
              child: Center(
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Nunc feugiat imperdiet\nultrices. Maecenas egestas nisi in quam\nlaoreet faucibus accumsan sit amet\nmetus. Nullam neque.',
                  style: Get.theme.textTheme.bodyMedium,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 180,
              width: 328,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ImageHelper.getimage('article'),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(5)),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: RoundButton(
                width: 328,
                height: 71,
                text: Text(
                  'Watch ad to get mod'.toUpperCase(),
                  style: Get.theme.textTheme.titleSmall,
                ),
                onPressed: () => Get.toNamed(Routes.download),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
