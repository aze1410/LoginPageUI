import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../comps/buttons.dart';
import '../comps/textfields.dart';
import 'loginpage.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: screenWidth * 0.05),
              LoginTitle(title: "REgister to AZe"),
              SizedBox(height: screenWidth * 0.02),
              MyTextField(hintText: "Name"),
              MyTextField(hintText: "Email"),
              MyTextField(hintText: "Password"),
              MyTextField(hintText: "Confirm Password"),
              SizedBox(height: screenWidth * 0.03),
              SizedBox(height: screenWidth * 0.03),
              AuthButton(buttonText: "Register"),
              SizedBox(height: screenWidth * 0.03),
              ContinueWith(),
              SizedBox(height: screenWidth * 0.35),
              LoginNow(),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginNow extends StatelessWidget {
  const LoginNow({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don't have an account?   ",
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontSize: 10,
            ),
            textScaleFactor: 1.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            child: Text(
              "Login",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
                color: Colors.blue.shade500,
                fontSize: 10,
              ),
              textScaleFactor: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}
