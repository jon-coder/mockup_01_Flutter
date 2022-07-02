import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/components.dart';
import '../utils/utils.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.blackColors,
      body: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: size.height,
          maxWidth: size.width,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ImageComponent(),
              const SizedBox(height: 54),
              Text(
                AppStrings.textPrimary,
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                AppStrings.textSecundary,
                style: GoogleFonts.roboto(
                  color: AppColors.grayColors,
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Button(
                title: AppStrings.sigIn,
                primaryColor: AppColors.purpleColors,
                textColor: AppColors.whiteColors,
              ),
              const SizedBox(height: 12),
              Button(
                title: AppStrings.googleSignIn,
                primaryColor: AppColors.whiteColors,
                textColor: Colors.black,
                icon: Image.asset('assets/google_light.png'),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.signInQuestion,
                    style: GoogleFonts.roboto(
                      color: AppColors.whiteColors,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      AppStrings.signInAnswer,
                      style: GoogleFonts.roboto(
                        color: AppColors.whiteColors,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
