import 'package:flutter/material.dart';

import '../../../base/res/media.dart';
import '../../../base/res/style/app_style.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            width: size.width * .42,
            height: 445,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 2)
                ]),
            child: Column(
              children: [
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage(AppMedia.planeSit),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "20% Discount on the early booking of the flight, Don't miss",
                  style: AppStyle.headLineStyle2,
                )
              ],
            )),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  width: size.width * .44,
                  height: 220,
                  decoration: BoxDecoration(
                    color: const Color(0xFF3AB8B8),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Discount\n Survey',
                        style: AppStyle.headLineStyle2.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Take the survey about our services and get discount',
                        style: AppStyle.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:
                            Border.all(width: 18, color: AppStyle.circleColor)),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              width: size.width * .44,
              height: 210,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: const Color(0xFFEC6545),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Take Love',
                    style: AppStyle.headLineStyle2.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 10), // Spacer between text and emojis
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '😍',
                        style: TextStyle(fontSize: 28), // Smaller emoji on the left
                      ),
                      SizedBox(width: 8), // Spacer between emojis
                      Text(
                        '🥰',
                        style: TextStyle(fontSize: 40), // Bigger emoji in the center
                      ),
                      SizedBox(width: 8), // Spacer between emojis
                      Text(
                        '😘',
                        style: TextStyle(fontSize: 28), // Smaller emoji on the right
                      ),
                    ],
                  ),
                ],
              ),
            )

          ],
        )
      ],
    );
  }
}
