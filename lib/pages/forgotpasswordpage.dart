import 'package:flutter/material.dart';
import '../comps/buttons.dart';
import '../comps/textfields.dart';
import 'loginpage.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: screenWidth * 0.2),
              LoginTitle(title: "recover your password"),
              SizedBox(height: screenWidth * 0.2),
              MyTextField(hintText: "Email"),
              SizedBox(height: screenWidth * 0.03),
              AuthButton(buttonText: "Reset Password"),
              SizedBox(height: screenWidth * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
