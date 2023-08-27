import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginpageui/comps/buttons.dart';
import 'package:loginpageui/comps/textfields.dart';
import 'package:loginpageui/pages/forgotpasswordpage.dart';
import 'package:loginpageui/pages/registerpage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              SizedBox(height: screenWidth * 0.1),
              LoginTitle(title: "WElcome to aze"),
              SizedBox(height: screenWidth * 0.1),
              MyTextField(hintText: "Email"),
              MyTextField(hintText: "Password"),
              SizedBox(height: screenWidth * 0.03),
              ForgotPassword(),
              SizedBox(height: screenWidth * 0.03),
              AuthButton(buttonText: "Login"),
              SizedBox(height: screenWidth * 0.03),
              ContinueWith(),
              SizedBox(height: screenWidth * 0.52),
              RegisterNow(),
            ],
          ),
        ),
      ),
    );
  }
}

// widgets

class LoginTitle extends StatelessWidget {
  final String title;
  const LoginTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.02),
      child: Text(
        title,
        style: GoogleFonts.bebasNeue(
          fontWeight: FontWeight.w500,
          color: Colors.black,
          fontSize: 18,
        ),
        textScaleFactor: 1.0,
      ),
    );
  }
}

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, screenWidth * 0.06, 10),
            child: Text(
              "Forgot Password",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
                color: Colors.black,
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

class RegisterNow extends StatelessWidget {
  const RegisterNow({super.key});

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
                MaterialPageRoute(builder: (context) => RegisterPage()),
              );
            },
            child: Text(
              "Register",
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

class ContinueWith extends StatelessWidget {
  const ContinueWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(25, 20, 25, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Divider(
                  color: Colors.black12,
                  thickness: 1,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "or Continue with",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ),
              Expanded(
                child: Divider(
                  color: Colors.black12,
                  thickness: 1,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 58,
            height: 58,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white24),
              borderRadius: BorderRadius.circular(12),
              color: Colors.white38,
            ),
            child: Image.asset(
              "assets/icons/google.png",
              scale: 2,
            ),
          ),
        )
      ],
    );
  }
}
