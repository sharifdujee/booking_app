import 'package:booking_app/base/res/style/app_style.dart';
import 'package:booking_app/base/utils/app_json.dart';
import 'package:booking_app/screens/widget/hotel.dart';
import 'package:flutter/material.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('All Hotels'),
      ),
      
      body: GridView.builder(
        itemCount: hotelList.length,
          gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
        crossAxisSpacing:16.0,
        mainAxisSpacing: 16.0,
        childAspectRatio: 1.0,
      ),
          itemBuilder: (context, index){
          var singleHotel = hotelList[index];
        return Hotel(hotel: singleHotel);


          })
    );
  }
}
