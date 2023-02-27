import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megd/helpers/text_helper.dart';

enum AgreementType { privacy, terms }

class Agreement extends StatelessWidget {
  Agreement({super.key}) {
    agreementType = Get.parameters['agreementType'] == 'privacy'
        ? AgreementType.privacy
        : AgreementType.terms;
  }

  late final AgreementType agreementType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        centerTitle: true,
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
        title: Text(
          (agreementType == AgreementType.privacy
                  ? 'Privacy Policy'
                  : 'Term of Use')
              .toUpperCase(),
          style: Get.theme.textTheme.displaySmall!.copyWith(
            color: Get.theme.colorScheme.onBackground,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          width: Get.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                agreementType == AgreementType.privacy
                    ? TextHelper.privacy
                    : TextHelper.terms,
                style: Get.theme.textTheme.bodyMedium!.copyWith(
                  color: Get.theme.colorScheme.onBackground,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
