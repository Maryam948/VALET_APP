import 'package:flutter/material.dart';

Widget socialButton({required String imagePath, required String label}) {
  return OutlinedButton(
    onPressed: () {},
    style: OutlinedButton.styleFrom(
      minimumSize: Size(double.infinity, 50),
      side: BorderSide(color: Colors.grey),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.symmetric(horizontal: 16),
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        Center(
          child: Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontSize: 17.1,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
         
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 8.0),   
            child: Image.asset(
              imagePath,   
              width: 25,    
              height: 25,   
            ),
          ),
        ),
      ],
    ),
  );
}


