import 'package:flutter/material.dart';

class MyArrowIcon extends StatelessWidget {
  const MyArrowIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios),
      color: Colors.black,

      onPressed: () {
        Navigator.pop(context);  
      },
    );
  }
}
