import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../platforms/platform_widget.dart';
import '../tokens/colors.token.dart';
import 'loading.widget.dart';

class ButtonWidget extends PlatformWidget {
  const ButtonWidget({
    Key? key,
    required this.text,
    this.action,
    this.width,
    this.isLoading,
  }) : super(key: key);

  final String text;
  final VoidCallback? action;
  final double? width;
  final bool? isLoading;

  @override
  Widget createAndroidWidget(BuildContext context) {
    return _setSizedBox(
      context: context,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          backgroundColor: action != null
              ? MaterialStateProperty.all<Color>(TokenColors.kBlue)
              : MaterialStateProperty.all<Color>(TokenColors.kBlack1),
        ),
        onPressed: action,
        child: _setButtonChild(),
      ),
    );
  }

  @override
  Widget createIosWidget(BuildContext context) {
    return _setSizedBox(
      context: context,
      child: CupertinoButton(
        borderRadius: BorderRadius.circular(16),
        disabledColor: TokenColors.kBlack1,
        color: TokenColors.kBlue,
        onPressed: action,
        child: _setButtonChild(),
      ),
    );
  }

  Widget _setButtonChild() {
    return isLoading == null || isLoading == false
        ? Text(
            text,
            style: TextStyle(
              color: TokenColors.kWhite,
              fontWeight: FontWeight.w600,
              fontSize: 14.sp,
            ),
          )
        : const LoadingWidget();
  }

  SizedBox _setSizedBox(
      {required BuildContext context, required Widget child}) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width / 6,
      child: child,
    );
  }
}
