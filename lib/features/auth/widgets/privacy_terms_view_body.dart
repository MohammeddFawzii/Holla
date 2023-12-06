import 'package:flutter/material.dart';

class PrivacyTermsViewBody extends StatelessWidget {
  const PrivacyTermsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          "شروط الخصوصية",
          style: TextStyle(
            fontFamily: "Questv1",
            color: Colors.black,
            fontSize: 26,
          ),
        ),
      ),
    );
  }
}
