import 'package:booking_app/base/res/style/app_style.dart';
import 'package:booking_app/base/widgets/app_colum_text_wayout.dart';
import 'package:flutter/material.dart';

class TicketOrangePart extends StatelessWidget {
  const TicketOrangePart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: AppStyle.ticketOrangeColor,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(21),
              bottomRight: Radius.circular(21))),
      child: const Column(
        ///

        children: [
          /// show departure and destination place with Icon
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppColumTextWayOut(
                topText: '1 May',
                bottomText: 'Date',
                alignment: CrossAxisAlignment.start,
              ),
              AppColumTextWayOut(
                topText: '08:00 AM',
                bottomText: 'Departure Time',
                alignment: CrossAxisAlignment.center,
              ),
              AppColumTextWayOut(
                topText: '23',
                bottomText: 'Number',
                alignment: CrossAxisAlignment.end,
              ),
            ],
          ),
        ],
      ),
    );
  }
}