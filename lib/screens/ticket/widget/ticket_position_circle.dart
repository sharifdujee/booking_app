import 'package:flutter/material.dart';

import '../../../base/res/style/app_style.dart';

class TicketCirclePosition extends StatelessWidget {
  const TicketCirclePosition({
    super.key,
    this.pos
  });
  final bool? pos;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: pos==true?22:null,
        top: 275,
        right: pos==true?null:22,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2)
          ),
          child: CircleAvatar(
            maxRadius: 4,
            backgroundColor: AppStyle.textColor,
          ),
        ));
  }
}