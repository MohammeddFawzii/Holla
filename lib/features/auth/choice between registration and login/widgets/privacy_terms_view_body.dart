import 'package:flutter/material.dart';
import 'package:holla/core/Utils/app_colors.dart';

class PrivacyTermsViewBody extends StatelessWidget {
  const PrivacyTermsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appInformationColors800,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "شروط الخصوصية",
              style: TextStyle(
                fontFamily: "Questv1",
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          "شروط الخصوصية",
          style: TextStyle(
            fontFamily: "Questv1",
            color: Colors.blueGrey,
            fontSize: 26,
          ),
        ),
      ),
    );
  }
}
