import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../../../core/design_system/tokens/paddings.token.dart';
import '../../../../core/design_system/widgets/button.widget.dart';
import '../../../../core/design_system/widgets/text.widget.dart';
import '../../../../core/design_system/widgets/text_button.widget.dart';
import '../components/bottom_sheet.component.dart';
import '../stores/auth.store.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  late AuthStore store;

  final PanelController _controller = PanelController();

  @override
  void initState() {
    store = Modular.get<AuthStore>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        color: Colors.transparent,
        controller: _controller,
        minHeight: 0.h,
        maxHeight: 60.h,
        backdropEnabled: true,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: TokenPaddings.md),
                child: Image.asset(
                  'assets/images/splash_image.png',
                  height: 50.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: TokenPaddings.sm,
                  vertical: TokenPaddings.sm,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const TextWidget.title(text: 'Pelada+'),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: TokenPaddings.sm,
                      ),
                      child: const TextWidget.subtitle(
                          text: 'Eleve as suas peladas à outro nível. '
                              'Organize seus jogos e realize sorteios justos'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        ButtonWidget(
                          text: 'Entrar',
                          width: 50.w,
                          action: () {
                            store.setIsLogin(true);
                            _controller.open();
                          },
                        ),
                        SizedBox(width: 5.w),
                        SizedBox(
                          width: 30.w,
                          child: TextButtonWidget(
                            text: 'Cadastrar',
                            action: () {
                              store.setIsLogin(false);
                              _controller.open();
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        panel: const BottomSheetComponent(),
      ),
    );
  }
}
