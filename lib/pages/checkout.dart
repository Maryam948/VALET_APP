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
              Expanded(
                child: ListView(
                  children: const [
                    HistoryItem(
                      time: "22:00",
                      date: "Tue, Dec 24",
                      endtime: "01:00",
                      enddate: "Wed, Dec 25",
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
    final DateFormat format = DateFormat("HH:mm");
    final DateTime now = DateTime.now();

    DateTime start = format.parse(time.trim());
    DateTime end = format.parse(endtime.trim());

    start = DateTime(now.year, now.month, now.day, start.hour, start.minute);
    end = DateTime(now.year, now.month, now.day, end.hour, end.minute);

    if (end.isBefore(start)) {
      end = end.add(const Duration(days: 1));
    }

    final Duration duration = end.difference(start);
    final int hours = (duration.inMinutes / 60).ceil();
    final String durationText = "$hours hour${hours == 1 ? '' : 's'} parking";
     
    final int cost = hours * 10;
   
    final int serviceFee = hours <= 1 ? 0 : ((hours - 1) / 2).ceil() * 5;
    final int totalCost = cost + serviceFee;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Start / End Display
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Start",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffD9D2E2)),
                ),
                const SizedBox(height: 8),
                Text(
                  time,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xff2D0C57)),
                ),
                Text(
                  date,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Color(0xffD9D2E2)),
                ),
              ],
            ),
            const Text(
              "→",
              style: TextStyle(
                  fontSize: 24,
                  color: Color(0xffD9D2E2),
                  fontWeight: FontWeight.bold),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 6,
                    ),
                    const Text(
                      "End",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffD9D2E2)),
                    ),
                  ],
                ),
                const SizedBox(height: 8),

                Text(
                  endtime,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xff2D0C57)),
                ),
                Text(
                  enddate,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Color(0xffD9D2E2)),
                ),
              ],
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
                  Text(
                    "$cost EGP",
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff624881),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Service fee",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff2D0C57),
                    ),
                  ),
                  Text(
                    "$serviceFee EGP", 
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff624881),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Total",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff2D0C57),
                    ),
                  ),
                  Text(
                    "$totalCost EGP", 
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff624881),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        const SizedBox(height: 30),

        const Text(
          "Payment method",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            fontFamily: 'Inter',
          ),
        ),
        const SizedBox(height: 15),
 
        Row(
          children: [
            const Image(image: AssetImage("images/credit-card.png")),
            const SizedBox(width: 15),
            const Text(
              "Credit Card",
              style: TextStyle(
                  color: Color(0xff2D0C57),
                  fontSize: 17.1,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            ArrowIcon2(routeName: "/creditcard"),
          ],
        ),
        const SizedBox(height: 15),
 
        Row(
          children: [
            const Image(image: AssetImage("images/Vector(11).png")),
            const SizedBox(width: 15),
            const Text(
              "Internet Banking",
              style: TextStyle(
                  color: Color(0xff2D0C57),
                  fontSize: 17.1,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            ArrowIcon2(routeName: "/bank"),
          ],
        ),
      ],
    );
  }
}   
