import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputWidget extends StatelessWidget {
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final String hintText;
  bool obscureText;

  InputWidget(
      {Key? key,
      required this.prefixIcon,
      required this.hintText,
      this.suffixIcon,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
          prefixIcon: Icon(
            prefixIcon,
            color: const Color(0xFF093766),
          ),
          suffixIcon: suffixIcon != null
              ? Icon(
                  suffixIcon,
                  color: const Color(0xFF093766),
                )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          hintText: hintText,
          hintStyle: GoogleFonts.openSans(
            textStyle: const TextStyle(
              fontSize: 16,
              color: Color(0xFFB0BACF),
            ),
          )),
    );
  }
}
