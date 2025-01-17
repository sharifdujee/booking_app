import 'package:flutter/material.dart';

import '../res/style/app_style.dart';

class TextStyleFourth extends StatelessWidget {
  const TextStyleFourth(
      {super.key,
      required this.text,
      this.align = TextAlign.start,
      this.isColor});
  final String text;
  final TextAlign align;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style:
        isColor==null? AppStyle.headLineStyle4.copyWith(color: Colors.white):AppStyle.headLineStyle4,
    );
  }
}
