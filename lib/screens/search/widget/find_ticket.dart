import 'package:booking_app/base/res/style/app_style.dart';
import 'package:flutter/material.dart';

class FindTicket extends StatelessWidget {
  const FindTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppStyle.findTicketColor),
      child: Center(
        child: Text(
          'Find Tickets',
          style: AppStyle.textStyle.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
