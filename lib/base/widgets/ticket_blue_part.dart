import 'package:booking_app/base/widgets/text_style_fourth.dart';
import 'package:booking_app/base/widgets/text_style_third.dart';
import 'package:flutter/material.dart';

import '../res/style/app_style.dart';
import 'app_layout_builder_widget.dart';
import 'big_dot.dart';

class TicketBluePart extends StatelessWidget {
  const TicketBluePart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: AppStyle.ticketBlueColor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(21),
              topRight: Radius.circular(21))),
      child: Column(
        children: [
          /// show departure and destination place with Icon
          Row(
            children: [
              const TextStyleThird(
                text: 'NYC',
              ),
              Expanded(child: Container()),
              const BigDot(),
              Expanded(
                  child: Stack(
                    children: [
                      const SizedBox(
                        height: 24,
                        child: AppLayoutBuilderWidget(
                          randomDivider: 6,
                        ),
                      ),
                      Center(
                        child: Transform.rotate(
                            angle: 1.5,
                            child: const Icon(
                              Icons.local_airport_rounded,
                              color: Colors.white,
                            )),
                      )
                    ],
                  )),
              const BigDot(),
              Expanded(child: Container()),
              const TextStyleThird(text: 'LDN')
            ],
          ),
          const SizedBox(
            height: 3,
          ),

          ///Show Departure destination name and time
          Row(
            children: [
              const SizedBox(
                  width: 100, child: TextStyleFourth(text: 'New-York')),
              Expanded(child: Container()),
              const TextStyleFourth(text: '8H 30M'),
              Expanded(child: Container()),
              const SizedBox(
                  width: 100,
                  child: TextStyleFourth(
                    text: "London",
                    align: TextAlign.end,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}