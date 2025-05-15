import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextInputType textInputTypeee;
  final bool isPassword;

  const MyTextField({
    Key? key,
    required this.textInputTypeee,
    required this.isPassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputTypeee,
      obscureText: isPassword,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
           borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        filled: true,
        fillColor: Color(0xffE7E7E7),
        contentPadding: const EdgeInsets.all(12),
        isDense: true,  
      ),
    );
  }
}
