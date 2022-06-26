import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/utils.dart';

class Button extends StatelessWidget {
  final String title;
  final Color primaryColor;
  final Color? textColor;
  final Widget? icon;

  const Button({
    Key? key,
    required this.title,
    required this.primaryColor,
    this.textColor,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: primaryColor,
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ?? const SizedBox(),
            Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: textColor ?? AppColors.blackColors,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
