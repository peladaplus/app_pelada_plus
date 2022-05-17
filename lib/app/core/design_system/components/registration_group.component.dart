import 'package:app_pelada_plus/app/core/design_system/tokens/colors.token.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationGroupComponent extends StatelessWidget {
  const RegistrationGroupComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TokenColors.kBlack2,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Dê um nome ao seu grupo',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: TokenColors.kWhite,
                fontFamily: GoogleFonts.sourceSansPro().fontFamily,
                fontSize: 36,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Esse nome será utilizado para se referir ao seu grupo.',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: TokenColors.kGrey2,
                fontFamily: GoogleFonts.sourceSansPro().fontFamily,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
