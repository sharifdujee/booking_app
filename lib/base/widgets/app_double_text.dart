import 'package:booking_app/base/res/style/app_style.dart';
import 'package:flutter/material.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({super.key, required this.bigText, required this.smallText, required this.func});
  final String bigText;
  final String smallText;
  final VoidCallback func;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: AppStyle.headLineStyle2,),
        InkWell(
          onTap: ()=> func(),
          child: Text(smallText, style: AppStyle.textStyle.copyWith(
            color: AppStyle.primaryColor
          ),),
        )
        
      ],
    );
  }
}
