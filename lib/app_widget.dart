import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/core/design_system/tokens/colors.token.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/registration_name');

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Pelada+',
      theme: ThemeData(
        fontFamily: GoogleFonts.sourceSansPro().fontFamily,
        scaffoldBackgroundColor: TokenColors.kBlack2,
      ),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
