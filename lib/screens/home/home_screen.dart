import 'package:booking_app/base/res/media.dart';
import 'package:booking_app/base/routing/app_routes.dart';
import 'package:booking_app/base/widgets/app_double_text.dart';
import 'package:booking_app/base/widgets/ticket_view.dart';
import 'package:booking_app/screens/widget/hotel.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../../base/res/style/app_style.dart';
import '../../base/utils/app_json.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,

      ///Listview has a scrollable effect
      body: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Good morning',
                          style: AppStyle.headLineStyle3,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Book Tickets',
                          style: AppStyle.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(AppMedia.logo),
                        ),
                      ),
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)),
                  child: Row(children: [
                    Icon(
                      FluentSystemIcons.ic_fluent_search_regular,
                      color: AppStyle.searchIconColor,
                    ),
                    const Text('Search')
                    /*Expanded(child: TextFormField(
                        decoration:  InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          labelText: 'Search',
                          prefixIcon: const Icon(FluentSystemIcons.ic_fluent_search_regular)
                        ),
                      ))*/
                  ]),
                ),
                const SizedBox(
                  height: 40,
                ),
                AppDoubleText(
                  bigText: 'Upcoming Flights',
                  smallText: 'View all',
                  func: () =>
                      Navigator.pushNamed(context, AppRoutes.allTickets),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: ticketList
                            .take(2)
                            .map((singleTicket) => TicketView(
                                  tickets: singleTicket,
                                ))
                            .toList()),
                ),
                const SizedBox(
                  height: 40,
                ),
                AppDoubleText(
                  bigText: 'Hotels',
                  smallText: 'View all',
                  func: () => Navigator.pushNamed(context, AppRoutes.allHotels),
                ),
                const SizedBox(
                  height: 20,
                ),
                 SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: hotelList
                            .take(2)
                            .map((singleHotel) => Hotel(
                          hotel: singleHotel,
                        ))
                            .toList()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
