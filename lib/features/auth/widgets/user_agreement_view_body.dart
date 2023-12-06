import 'package:flutter/material.dart';

class UserAgreementViewBody extends StatelessWidget {
  const UserAgreementViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          "إتفاقية المستخدم",
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
