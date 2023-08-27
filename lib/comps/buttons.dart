import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthButton extends StatelessWidget {
  final String buttonText;

  const AuthButton({
    required this.buttonText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: screenWidth * 0.9,
        height: 58,
        decoration: BoxDecoration(
          color: Colors.black54, // Change the color as needed
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextButton(
          onPressed: () {
            // Add your button onPressed logic here
          },
          child: Text(
            buttonText,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: 12,
            ),
            textScaleFactor: 1.0,
          ),
        ),
      ),
    );
  }
}
