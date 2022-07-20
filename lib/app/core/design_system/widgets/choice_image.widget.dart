import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../tokens/paddings.token.dart';

class ChoiceImageWidget extends StatelessWidget {
  const ChoiceImageWidget({
    Key? key,
    required this.image,
    required this.isSelected,
    required this.action,
  }) : super(key: key);

  final String image;
  final bool isSelected;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Padding(
        padding: EdgeInsets.only(bottom: TokenPaddings.lg),
        child: Container(
          decoration: isSelected
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.orange, width: 3),
                )
              : null,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              'assets/images/$image.png',
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
              width: 100.w,
              height: 20.h,
            ),
          ),
        ),
      ),
    );
  }
}
