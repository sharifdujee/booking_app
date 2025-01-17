import 'package:barcode_widget/barcode_widget.dart';
import 'package:booking_app/base/res/style/app_style.dart';
import 'package:booking_app/base/utils/app_json.dart';
import 'package:booking_app/base/widgets/app_layout_builder_widget.dart';
import 'package:booking_app/base/widgets/ticket_view.dart';
import 'package:booking_app/screens/search/widget/app_ticket_tab.dart';
import 'package:booking_app/screens/ticket/widget/ticket_position_circle.dart';
import 'package:flutter/material.dart';

import '../../base/res/media.dart';
import '../../base/widgets/app_colum_text_wayout.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {

  late int  ticketIndex = 0;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    if(ModalRoute.of(context)!.settings.arguments != null){
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      ticketIndex = args['index'];
      print('The value is Null');
    }



    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Tickets'),
        centerTitle: true,
        backgroundColor: AppStyle.bgColor,

      ),
      backgroundColor: AppStyle.bgColor,
      body: Stack(

        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            children: [
              /*const SizedBox(
                height: 40,
              ),*/
              /*Text(
                'Tickets',
                style: AppStyle.headLineStyle1,
              ),*/
              /*const SizedBox(
                height: 20,
              ),*/
              const AppTicketTab(
                firstTab: 'Upcoming',
                secondTab: 'Previous',
              ),
              const SizedBox(
                height: 20,
              ),
              Container(

                  padding: const EdgeInsets.only(left: 16),
                  child: TicketView(tickets: ticketList[ticketIndex],isColor: true,),),
              const SizedBox(height: 1,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 32),
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                color: AppStyle.ticketColor,
                child:   Column(

                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumTextWayOut(
                          topText: 'Flutter DB',
                          bottomText: 'Passenger',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                        AppColumTextWayOut(
                          topText: '5221 36869',
                          bottomText: 'Passport',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    const AppLayoutBuilderWidget(randomDivider: 15, width: 5, isColor: false,),
                    const SizedBox(height: 20,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumTextWayOut(
                          topText: '24465 6584940468',
                          bottomText: 'Number of E-ticket',
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumTextWayOut(
                          topText: 'B46859',
                          bottomText: 'Booking Code',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),

                      ],
                    ),
                    const SizedBox(height: 20,),
                    const AppLayoutBuilderWidget(randomDivider: 15, width: 5, isColor: false,),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                               Image.asset(AppMedia.visaCard, scale: 11,),
                                Text(' *** 2462', style: AppStyle.headLineStyle3,)
                              ],

                            ),
                             const SizedBox(height: 5,),
                             Text('Payment Method', style: AppStyle.headLineStyle4,)
                          ],
                        ),
                        const AppColumTextWayOut(
                          topText: '\$249.99',
                          bottomText: 'Price',
                          alignment: CrossAxisAlignment.center,
                          isColor: true,
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              /// bottom of the ticket details section
              const SizedBox(height: 1,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 32),
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: AppStyle.ticketColor,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21),
                  )
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(

                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      height: 70,
                        width: double.infinity,
                        data: 'https://sharifdeveloper.com', barcode: Barcode.code128(),
                      drawText: false,
                      color: AppStyle.textColor,
                    )),
                  ),
                ),
              const SizedBox(height: 20,),
              /// colorful Ticket
              Container(

                padding: const EdgeInsets.only(left: 16),
                child: TicketView(tickets: ticketList[ticketIndex]),),


            ],
          ),
          const TicketCirclePosition(pos: true,),
          const TicketCirclePosition(pos: null,),


        ],
      ),
    );
  }
}


