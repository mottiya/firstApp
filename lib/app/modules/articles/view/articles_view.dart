import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megd/app/components/round_button.dart';
import 'package:megd/app/routes/app_pages.dart';
import 'package:megd/helpers/image_helper.dart';

class Articles extends StatelessWidget {
  const Articles({super.key});

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
          titleTextStyle: Get.theme.textTheme.displayLarge!.copyWith(
            color: Get.theme.colorScheme.onBackground,
          ),
          centerTitle: true,
          title: Text(
            'Mods'.toUpperCase(),
          ),
          leading: IconButton(
            splashRadius: 25,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: const Icon(Icons.settings_outlined),
            onPressed: () => Get.toNamed(Routes.settings),
          ),
          iconTheme: IconThemeData(
            color: Get.theme.colorScheme.onBackground,
            size: 29,
            opticalSize: 29,
          ),
        ),
        bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.transparent,
          destinations: [
            TextButton(
              style: const ButtonStyle(
                overlayColor: MaterialStatePropertyAll<Color>(Colors.transparent),
              ),
              child: Text(
                'Terms of use',
                style: Get.theme.textTheme.labelSmall,
              ),
              onPressed: () => Get.toNamed(Routes.terms),
            ),
            TextButton(
              style: const ButtonStyle(
                overlayColor: MaterialStatePropertyAll<Color>(Colors.transparent),
              ),
              child: Text(
                'Privacy Policy',
                style: Get.theme.textTheme.labelSmall,
              ),
              onPressed: () => Get.toNamed(Routes.privacy),
            ),
          ],
        ),
        body: ListView.builder(
          shrinkWrap: false,
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            if (index < 10) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: NameOfMod(value: index),
                ),
              );
            } else {
              return Center(child: NameOfMod(value: index));
            }
          },
        ),
      ),
    );
  }
}

class NameOfMod extends StatelessWidget {
  const NameOfMod({super.key, required this.value});
  final int value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 205,
      width: 328,
      child: Stack(
        children: [
          Container(
            height: 180,
            width: 328,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ImageHelper.getimage('article'),
                fit: BoxFit.fill,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => Get.toNamed(Routes.article),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
          Column(
            children: [
              const Spacer(),
              Center(
                child: RoundButton(
                  width: 262,
                  height: 50,
                  text: Text(
                    'Name of mod',
                    style: Get.theme.textTheme.titleSmall,
                  ),
                  onPressed: () => Get.toNamed(Routes.article),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
