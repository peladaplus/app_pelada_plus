import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/design_system/tokens/colors.token.dart';
import '../../../../core/design_system/tokens/paddings.token.dart';
import '../../../../core/design_system/widgets/button.widget.dart';
import '../../../../core/design_system/widgets/input_text.widget.dart';
import '../../../../core/design_system/widgets/text.widget.dart';
import '../../../../core/design_system/widgets/text_button.widget.dart';
import '../../../../core/enums/status_screen.enum.dart';
import '../../domain/entities/auth.entity.dart';
import '../stores/auth.store.dart';

class BottomSheetComponent extends StatefulWidget {
  const BottomSheetComponent({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomSheetComponent> createState() => _BottomSheetComponentState();
}

class _BottomSheetComponentState extends State<BottomSheetComponent> {
  late AuthStore store;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    store = Modular.get<AuthStore>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: TokenColors.kBlack1,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: TokenPaddings.sm,
          vertical: TokenPaddings.xs,
        ),
        child: Observer(
          builder: (_) => Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Container(
                      height: 1.h,
                      width: MediaQuery.of(context).size.width * .10,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        color: TokenColors.kGrey2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: TokenPaddings.sm,
                    ),
                    child: TextWidget.title(
                      text: store.isLogin ? 'Bem-vindo' : 'Cadastre-se',
                    ),
                  ),
                  InputTextWidget(
                    hint: 'Email',
                    backgroundColor: TokenColors.kBlack2,
                    controller: emailController,
                  ),
                  SizedBox(height: 2.h),
                  InputTextWidget(
                    hint: 'Senha',
                    backgroundColor: TokenColors.kBlack2,
                    controller: passwordController,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ButtonWidget(
                    text: store.isLogin ? 'Entrar' : 'Cadastrar',
                    action: store.isLogin
                        ? () async {
                            await store.signIn(AuthEntity(
                              email: emailController.text,
                              password: passwordController.text,
                            ));
                            statusHandler();
                          }
                        : () async {
                            await store.createUser(AuthEntity(
                              email: emailController.text,
                              password: passwordController.text,
                            ));
                            statusHandler();
                          },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextWidget.subtitle(
                        text: store.isLogin
                            ? 'Não possui cadastro?'
                            : 'Já possui cadastro?',
                        color: TokenColors.kWhite,
                      ),
                      TextButtonWidget(
                        text: store.isLogin ? 'Cadastre-se' : 'Acesse',
                        color: TokenColors.kBlue,
                        action: () => store.setIsLogin(!store.isLogin),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void statusHandler() {
    if (store.statusScreen == StatusScreen.success) {
      Modular.to.pushNamed('/group/registration_name');
    }
    if (store.statusScreen == StatusScreen.error) {
      scaffoldKey.currentState!
        .showSnackBar(
          SnackBar(
              content: Text(
                store.exception!.message,
              )),
        );
    }
  }
}
