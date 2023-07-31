import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxUi extends StatelessWidget {
  const BoxUi({
    this.color = const Color(0xffd5d5d5),
    required this.textNumber,
    required this.text,
    this.colorText =Colors.white,
    super.key,
  });

  final Color color;
  final Color colorText;
  final String textNumber;

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 80,
      width: 150,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(textNumber,
              style: GoogleFonts.montserrat(
                  color: colorText,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
          Text(
            text,
            style: GoogleFonts.montserrat(
                color: colorText, fontWeight: FontWeight.w500, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
