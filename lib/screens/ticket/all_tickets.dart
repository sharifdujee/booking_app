import 'package:booking_app/base/routing/app_routes.dart';
import 'package:booking_app/base/utils/app_json.dart';
import 'package:booking_app/base/widgets/ticket_view.dart';
import 'package:flutter/material.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Tickets'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
                children: ticketList
                    .map((singleTicket) => GestureDetector(
                  onTap: (){
                    var index = ticketList.indexOf(singleTicket);
                    print('I am Tapped on the ticket $index');
                    Navigator.pushNamed(context, AppRoutes.ticketScreen, arguments: {
                      'index': index
                    });

                  },
                      child: Container(
                                        margin: const EdgeInsets.only(bottom: 20),
                      child: TicketView(tickets: singleTicket, wholeScreen: true,)),
                    ))
                    .toList()),
          )
        ],
      ),
    );
  }
}
