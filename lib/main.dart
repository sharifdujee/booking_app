import 'package:booking_app/base/bottom_nav_bar.dart';
import 'package:booking_app/screens/hotel/all_hotels.dart';
import 'package:booking_app/screens/ticket/all_tickets.dart';
import 'package:booking_app/screens/ticket/ticket_screen.dart';
import 'package:flutter/material.dart';

import 'base/routing/app_routes.dart';

void main() {
  runApp(const MyApp());
  /*var test = TestClass(x: 2, y: 3);
  print(test.x);
  test.copyWith(10, 25);*/
}

/// remove comment //.*\n
/*class TestClass{
  int x;
  int y;
  TestClass({
    required this.x,
    required this.y
});
  TestClass copyWith(int? x,  int? y){
    return TestClass(x: 5, y: 20);
  }
}*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      debugShowCheckedModeBanner: false,

      routes: {
       AppRoutes.homePage: (context)=>const BottomNavBar(),
        AppRoutes.allTickets:(context)=>const AllTickets(),
        AppRoutes.ticketScreen:(context)=>const TicketScreen(),
        AppRoutes.allHotels:(context)=> const AllHotels(),

      },
    );
  }
}
