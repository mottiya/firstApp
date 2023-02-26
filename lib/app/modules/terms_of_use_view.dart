import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermsOfUse extends StatelessWidget {
  const TermsOfUse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        centerTitle: true,
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
        title: Text(
          'Terms of use'.toUpperCase(),
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
              child: RichText(
                text: TextSpan(
                  style: Get.theme.textTheme.bodyMedium!.copyWith(
                    color: Get.theme.colorScheme.onBackground,
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                        text:
                            "By using “Web protect” (“Application”) you accept these Terms and Conditions (this “Agreement”). Agreement apply to all users (“you” or “Member”). Unless amended or modified, Agreement will remain in effect while you are a User, Subscriber or a Member. If you do not agree with these Terms and Conditions, please do not use the Application.\n\n"),
                    TextSpan(
                        text:
                            "AGE RESTRICTIONS\nRegistration and participation on the Application is restricted to those individuals over 18 years of age, emancipated minors, or those who possess legal parental or guardian consent, and are fully able and competent to enter into the terms, conditions, obligations, affirmations, representations and warranties herein. By registering or participating in services or functions on the Application, you hereby represent that you are over 18 years of age, an emancipated minor or in possession of consent by a legal parent or guardian and have the authority to enter into the terms herein. In any case, you affirm that you are over the age of 13 as the Application is not intended for children under 13. If you are under 13 years of age, do not use the Application.\n\n"),
                    TextSpan(
                        text:
                            "DISCLAIMER\nThe Application is fully intended for entertainment purposes. All readings are given in ahonest manner as a guidance only. By using this Application, you agree that you make your own decisions, relying solely on your discretion; any use you make of such answers, advice or services is at your own risk and Company cannot be held responsible or be liable for any damages or losses resulting from your reliance on such answers or advice. The services provided by the Application are ‘as is’ with no warranty. Our Advisors and Application make every effort to provide you with helpful, insightful information. However, the information provided to you should not be used in place of any recommendations by medical professionals or other professional counselors.\n\n"),
                    TextSpan(
                        text:
                            "RIGHT OF MODIFICATION\nWe reserve the right to change or modify the Terms of Use at our sole discretion at any time. Any change or modification to the Terms of Use will be effective immediately upon posting by us. For any material changes to the Terms, we will take reasonable steps to notify you of such changes. In all cases, your continued use of the Application after publication of such modifications, with or without notification, constitutes binding acceptance of these modified Terms of Use.\n\n"),
                    TextSpan(
                        text:
                            "LIMITATION ON LIABILITY AND DISCLAIMER OF WARRANTY\nUnder no circumstances will we be liable to any Subscriber, non-Subscriber, Member or non- Member regarding the use of this Service. The User of the Application does so at the User's risk. Neither Company nor any of its officers, directors, employees, agents, third-party content providers, merchants, sponsors licensors and/or the like, warrant that any of the services provided will be uninterrupted or error- free; nor do they make any warranty as to the results that may be obtained from the use of the Application nor, as to the accuracy, reliability, or timeliness of any information content, service, or merchandise provided through the Application. We expressly disclaim all warranties of any kind, whether expressed or implied, including, but not limited to, the implied warranties of merchantability, fitness for a particular purpose and non-infringement.\n\n"),
                    TextSpan(
                        text:
                            "MODIFICATION TO PRICES OR BILLING TERMS\nCompany reserves the right, at any time, tochange its prices and billing methods for products or services sold, effective immediately, in the Application or by e-mail delivery to you.\n\n"),
                    TextSpan(
                        text:
                            "ORDER ACCEPTANCE POLICY\nYour receipt of an electronic or other form of order confirmation does not signify our acceptance of your order, nor does it constitute confirmation of our offer to provide service. Company reserves the right at any time after receipt of your order to accept or decline your order for any reason. We may require additional verifications or information before accepting any purchasetion."),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
