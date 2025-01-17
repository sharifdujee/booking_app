import 'package:booking_app/base/res/style/app_style.dart';
import 'package:booking_app/screens/search/widget/app_text_icon.dart';
import 'package:booking_app/screens/search/widget/app_ticket_tab.dart';
import 'package:booking_app/screens/search/widget/find_ticket.dart';
import 'package:booking_app/screens/search/widget/ticket_promotion.dart';
import 'package:flutter/material.dart';

import '../../base/routing/app_routes.dart';
import '../../base/widgets/app_double_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "What are\n you looking for?",
            style: AppStyle.headLineStyle1.copyWith(
              fontSize: 35,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTab(firstTab: 'Airline Tickets', secondTab: 'Hotels',),
          const SizedBox(
            height: 25,
          ),
          const AppTextIcon(
            icon: Icons.flight_takeoff_rounded,
            text: 'Departure',
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTextIcon(
            icon: Icons.flight_land_rounded,
            text: 'Arrival',
          ),
          const SizedBox(
            height: 25,
          ),
          const FindTicket(),
          const SizedBox(
            height: 25,
          ),
          AppDoubleText(
            bigText: 'Upcoming Flights',
            smallText: 'View all',
            func: () => Navigator.pushNamed(context, AppRoutes.allTickets),
          ),
          const SizedBox(
            height: 15,
          ),
          const TicketPromotion()
        ],
      ),
    );
  }
}
