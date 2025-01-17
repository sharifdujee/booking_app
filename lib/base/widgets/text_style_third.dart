import 'package:flutter/material.dart';

import '../res/style/app_style.dart';

class TextStyleThird extends StatelessWidget {
  const TextStyleThird({super.key, required this.text, this.isColor});
  final String text;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style:
      isColor==null? AppStyle.addressHeadLine3.copyWith(color: Colors.white):AppStyle.headLineStyle3,
    );
  }
}
