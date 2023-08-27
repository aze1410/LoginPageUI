import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {
  final String hintText;

  const MyTextField({
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.02),
      child: Container(
        width: screenWidth * 0.9,
        height: 58,
        decoration: BoxDecoration(
          color: Colors.white24,
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextField(
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            fontSize: 18, // Keep the font size fixed
          ),
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(screenWidth * 0.045),
            hintStyle: GoogleFonts.montserrat(
              fontWeight: FontWeight.w500,
              fontSize: 15, // Keep the font size fixed
            ),
          ),
        ),
      ),
    );
  }
}
