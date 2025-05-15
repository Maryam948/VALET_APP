import 'package:flutter/material.dart';
import 'package:valet_app/shared/arrowicon.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF6F5F5),
        leading: const MyArrowIcon(),
        title: const Text(
          "History",
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: const [
          SizedBox(height: 200),
          HistoryItem(date: "12.6.2025", time: "10.00 am : 2.30 pm"),
          SizedBox(height: 40),
          HistoryItem(date: "13.6.2025", time: "11.00 am : 4.00 pm"),
        ],
      ),
    );
  }
}

class HistoryItem extends StatelessWidget {
  final String date;
  final String time;

  const HistoryItem({
    super.key,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 39),
          child: Text(
            date,
            style: const TextStyle(fontSize: 18),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const SizedBox(width: 20),
            Image.asset(
              "images/Vector(10).png",
              height: 20,
              width: 20,
            ),
            const SizedBox(width: 5),
            Text(
              time,
              style: const TextStyle(
                fontSize: 13,
                color: Color(0xff270158),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
