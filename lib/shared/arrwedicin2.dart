import 'package:flutter/material.dart';

class ArrowIcon2 extends StatelessWidget {
  final String routeName;

  const ArrowIcon2({super.key, required this.routeName});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.keyboard_arrow_right_sharp),
      color: Colors.black,
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
    );
  }
}

