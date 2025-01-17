import 'package:booking_app/screens/search/widget/app_tab.dart';
import 'package:flutter/material.dart';

class AppTicketTab extends StatelessWidget {
  const AppTicketTab({super.key, required this.firstTab, required this.secondTab});
  final String firstTab;
  final String secondTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xFFF4F6FD)),
      child:  Row(
        children: [
          AppTab(tabName:firstTab ),
          AppTab(
            tabName: secondTab,
            tabBorder: true,
            tabColor: true,
          ),
        ],
      ),
    );
  }
}
