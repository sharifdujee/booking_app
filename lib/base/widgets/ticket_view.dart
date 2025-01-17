import 'package:booking_app/base/res/style/app_style.dart';
import 'package:booking_app/base/widgets/app_layout_builder_widget.dart';
import 'package:booking_app/base/widgets/text_style_fourth.dart';
import 'package:booking_app/base/widgets/text_style_third.dart';
import 'package:flutter/material.dart';

import 'app_colum_text_wayout.dart';
import 'big_circle_dot.dart';
import 'big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView(
      {super.key,
      required this.tickets,
      this.wholeScreen = false,
      this.isColor});
  final Map<String, dynamic> tickets;
  final bool wholeScreen;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: size.width * 0.85,
        height: 190,
        child: Container(

          margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
          child: Column(
            children: [
              /// Blue part of the ticket
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: isColor == null
                        ? AppStyle.ticketBlueColor
                        : AppStyle.ticketColor,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21))),
                child: Column(
                  children: [
                    /// show departure and destination place with Icon
                    Row(
                      children: [
                        TextStyleThird(
                          text: tickets['from']['code'],
                          isColor: isColor,
                        ),
                        Expanded(child: Container()),
                        BigDot(
                          isColor: isColor,
                        ),
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
                                  child: Icon(
                                    Icons.local_airport_rounded,
                                    color: isColor == null
                                        ? Colors.white
                                        : AppStyle.planeSecondColor,
                                  )),
                            )
                          ],
                        )),
                        BigDot(
                          isColor: isColor,
                        ),
                        Expanded(child: Container()),
                        TextStyleThird(
                          text: tickets['to']['code'],
                          isColor: isColor,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),

                    ///Show Departure destination name and time
                    Row(
                      children: [
                        SizedBox(
                            width: 100,
                            child: TextStyleFourth(
                              text: tickets['from']['name'],
                              isColor: isColor,
                            )),
                        Expanded(child: Container()),
                        TextStyleFourth(
                          text: tickets['flying_time'],
                          isColor: isColor,
                        ),
                        Expanded(child: Container()),
                        SizedBox(
                          width: 100,
                          child: TextStyleFourth(
                            text: tickets['to']['name'],
                            isColor: isColor,
                            align: TextAlign.end,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              /// Circle and dot
              Container(
                color: isColor == null
                    ? AppStyle.ticketOrangeColor
                    : AppStyle.ticketColor,
                child: Row(
                  children: [
                    BigCircleDot(
                      isRight: false,
                      isColor: isColor,
                    ),

                    ///flying icon
                    Expanded(
                        child: AppLayoutBuilderWidget(
                      randomDivider: 16,
                      width: 6,
                      isColor: isColor,
                    )),
                    BigCircleDot(
                      isRight: true,
                      isColor: isColor,
                    ),
                  ],
                ),
              ),

              ///orange part of the ticket
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: isColor == null
                        ? AppStyle.ticketOrangeColor
                        : AppStyle.ticketColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                        bottomRight:
                            Radius.circular(isColor == null ? 21 : 0))),
                child: Column(
                  ///

                  children: [
                    /// show departure and destination place with Icon
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumTextWayOut(
                          topText: tickets['date'],
                          bottomText: 'Date',
                          alignment: CrossAxisAlignment.start,
                          isColor: isColor,
                        ),
                        AppColumTextWayOut(
                          topText: tickets['departure_time'],
                          bottomText: 'Departure Time',
                          alignment: CrossAxisAlignment.center,
                          isColor: isColor,
                        ),
                        AppColumTextWayOut(
                          topText: tickets['number'].toString(),
                          bottomText: 'Number',
                          alignment: CrossAxisAlignment.end,
                          isColor: isColor,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
