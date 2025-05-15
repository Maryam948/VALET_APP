import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:valet_app/shared/arrwedicin2.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(23, 130, 23, 130),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Parking Details",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inter',
                    fontSize: 22),
              ),
              const SizedBox(height: 20),

              // ✅ Start & End Row
              const Row(
                children: [
                  SizedBox(width: 11),
                  Text("Start",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffD9D2E2))),
                  SizedBox(width: 251),
                  Text("End ",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffD9D2E2))),
                ],
              ),

              Expanded(
                child: ListView(
                  children: const [
                    HistoryItem(
                      time: "10:00 AM",
                      date: "Tue,Dec 24",
                      endtime: "12:00 PM",
                      enddate: "Tue,Dec 24",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HistoryItem extends StatelessWidget {
  final String date;
  final String time;
  final String enddate;
  final String endtime;

  const HistoryItem({
    super.key,
    required this.date,
    required this.time,
    required this.enddate,
    required this.endtime,
  });

  @override
  Widget build(BuildContext context) {
    // ✅ حساب الفرق بين الوقتين
    final DateFormat format = DateFormat("h:mm a");
    final DateTime start = format.parse(time.trim());
    final DateTime end = format.parse(endtime.trim());

    final Duration duration = end.difference(start);
    final int hours = duration.inMinutes ~/ 60;
    
    final String durationText = "$hours hour${hours == 1 ? '' : 's'} parking";
    final int cost = hours * 10; 
    final int serviceFee = 5;   
    final int totalCost = cost + serviceFee; 


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                time,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xff2D0C57)),
              ),
            ),
            const Text("→",
                style: TextStyle(
                    fontSize: 24,
                    color: Color(0xffD9D2E2),
                    fontWeight: FontWeight.bold)),
            Expanded(
              child: Text(
                endtime,
                textAlign: TextAlign.right,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xff2D0C57)),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                date,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xffD9D2E2)),
              ),
            ),
            Expanded(
              child: Text(
                enddate,
                textAlign: TextAlign.right,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xffD9D2E2)),
              ),
            ),
          ],
        ),
        const SizedBox(height: 60),

        Container(
          padding: const EdgeInsets.fromLTRB(15, 30, 15, 20),
          decoration: BoxDecoration(
            color: const Color(0xffE7E7E7),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                       Text(
                      durationText,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff2D0C57),
                      ),
                    ),
               
               
                    Text("$cost EGP",style:TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff624881),
                    ) ,),
                  
                ],
              ),
              SizedBox(
                height: 20,
              ),
                          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                   Text("Service fee",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff2D0C57),
                  ),
                ),
 
 
                Text("5 EGP",style:TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff624881),
                ) ,),
            ],
                          ),
                                        SizedBox(
                height: 20,
              ),
                          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                   Text("Total",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff2D0C57),
                  ),
                ),
 
 
                Text("$totalCost EGP",style:TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff624881),
                ) ,),
            ],
                          ),

            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text("Payment method",
        style:TextStyle(fontWeight: FontWeight.bold,fontSize: 22,fontFamily: 'Inter'),
        
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Image(image: AssetImage("images/credit-card.png"), ),
            SizedBox(width: 15,),
            Text("Credit Card",style: TextStyle(color: Color(0xff2D0C57),fontSize: 17.1,fontFamily: 'Inter',fontWeight: FontWeight.bold),) ,
              Spacer(),
            ArrowIcon2(routeName:"/creditcard"),

          ],
        ),
                 
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Image(image: AssetImage("images/Vector(11).png"), ),
            SizedBox(width: 15,),
            Text("Internet Banking",style: TextStyle(color: Color(0xff2D0C57),fontSize: 17.1,fontFamily: 'Inter',fontWeight: FontWeight.bold),) ,
              Spacer(),
            ArrowIcon2(routeName: "/bank"),
          ],
        )
      ],
    );
  }
}
