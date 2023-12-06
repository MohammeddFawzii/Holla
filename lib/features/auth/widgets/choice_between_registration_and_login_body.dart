import 'package:flutter/material.dart';
import 'package:holla/core/Utils/app_colors.dart';
import 'package:holla/core/Utils/app_images.dart';
import 'package:holla/features/auth/views/privacy_terms_view.dart';
import 'package:holla/features/auth/views/user_agreement_view.dart';
import 'package:holla/features/auth/widgets/gradiant_button.dart';
import 'package:holla/features/auth/widgets/navigator_text.dart';
import 'package:holla/features/auth/widgets/social_method_button.dart';
import 'package:holla/features/splash/widgets/circular_gradiant_opacity_container.dart';
import 'package:holla/features/splash/widgets/gradient_container.dart';

class ChoiceBetweenRegistrationAndLoginBody extends StatelessWidget {
  const ChoiceBetweenRegistrationAndLoginBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          GradientContainer(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            colorOne: AppColors.appPrimaryColors800,
            colorTwo: AppColors.appPrimaryColors400,
          ),
          CircularGradiantOpacityContainer(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            hightRatio: 0.5,
            widthRatio: 1,
            colorOne: Colors.white,
            colorTwo: Colors.white,
            colorOneOpacity: 0.22,
            colorTwoOpacity: 0,
            radius: 0.5,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GradiantButton(
                  onPressed: () {},
                  screenWidth: screenWidth,
                  buttonLabel: "تسجيل الدخول",
                ),
                const SizedBox(
                  height: 30,
                ),
                GradiantButton(
                  onPressed: () {},
                  screenWidth: screenWidth,
                  buttonLabel: "تسجيل ",
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "التسجيل بأستخدام",
                  style: TextStyle(
                    fontFamily: "Questv1",
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialMethodButton(
                        screenWidth: screenWidth,
                        socialLogo: AppImages.googlePLogo,
                        onTap: () {}),
                    const SizedBox(
                      width: 10,
                    ),
                    SocialMethodButton(
                        screenWidth: screenWidth,
                        socialLogo: AppImages.fbLogo,
                        onTap: () {}),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NavigatorText(
                      content: "إتفاقيه المستخدم",
                      onTap: () {
                        Navigator.pushNamed(context, UserAgreementView.id);
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "|",
                      style: TextStyle(
                        fontFamily: "Questv1",
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    NavigatorText(
                      content: "شروط الخصوصية",
                      onTap: () {
                        Navigator.pushNamed(context, PrivacyTermsView.id);
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
