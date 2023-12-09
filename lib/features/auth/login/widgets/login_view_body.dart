import 'package:flutter/material.dart';
import 'package:holla/core/Utils/app_colors.dart';
import 'package:holla/core/Utils/app_images.dart';
import 'package:holla/features/auth/choice%20between%20registration%20and%20login/views/privacy_terms_view.dart';
import 'package:holla/features/auth/choice%20between%20registration%20and%20login/views/user_agreement_view.dart';
import 'package:holla/features/auth/choice%20between%20registration%20and%20login/widgets/gradiant_button.dart';
import 'package:holla/features/auth/choice%20between%20registration%20and%20login/widgets/navigator_text.dart';
import 'package:holla/features/auth/login/views/password_recovery.dart';
import 'package:holla/features/auth/login/widgets/custom_text_form_field.dart';
import 'package:holla/features/home/views/home_view.dart';
import 'package:holla/features/splash/widgets/gradient_container.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String phoneNum;
  late String password;

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
          SizedBox(
            height: screenHeight,
            width: screenWidth,
            child: Opacity(
              opacity: 0.05,
              child: Image.asset(
                AppImages.waterMarkImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: screenWidth * 0.45,
                  child: Image.asset(AppImages.appPLogo),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  " أهلا ضيفنا",
                  style: TextStyle(
                    fontFamily: "Hayah",
                    color: Colors.white,
                    fontSize: 80,
                  ),
                ),
                Form(
                  key: formkey,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomTextFormField(
                            screenWidth: screenWidth,
                            autovalidateMode: autovalidateMode,
                            fieldIcon: const Icon(
                              Icons.contact_phone_outlined,
                            ),
                            fielldRatio: 0.8,
                            hintText: "رقم الهاتف",
                            onSaved: (value) {
                              phoneNum = value!;
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextFormField(
                        screenWidth: screenWidth,
                        autovalidateMode: autovalidateMode,
                        fieldIcon: const Icon(
                          Icons.verified_user_outlined,
                        ),
                        fielldRatio: 0.8,
                        hintText: " كلمة المرور",
                        onSaved: (value) {
                          password = value!;
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      GradiantButton(
                          screenWidth: screenWidth,
                          buttonLabel: "تسجيل الدخول",
                          onPressed: () {
                            Navigator.pushNamed(context, HomeView.id);
                          },
                          buttonRatio: 0.6),
                      const SizedBox(
                        height: 10,
                      ),
                      NavigatorText(
                        content: "لقد نسيت كلمة المرور ؟ ",
                        onTap: () {
                          Navigator.pushNamed(context, PasswordRecoveryView.id);
                        },
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          NavigatorText(
                            content: "إتفاقيه المستخدم",
                            onTap: () {
                              Navigator.pushNamed(
                                  context, UserAgreementView.id);
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
                        height: 10,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
