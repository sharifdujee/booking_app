import 'package:booking_app/base/widgets/text_style_fourth.dart';
import 'package:booking_app/base/widgets/text_style_third.dart';
import 'package:flutter/material.dart';

class AppColumTextWayOut extends StatelessWidget {
  const AppColumTextWayOut({super.key, required this.topText, required this.bottomText, required this.alignment, this.isColor});
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(text: topText, isColor: isColor,),
        const SizedBox(height: 5,),
        TextStyleFourth(text: bottomText, isColor: isColor,),

      ],
    );
  }
}
