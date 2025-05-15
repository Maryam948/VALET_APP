import 'package:flutter/material.dart';
import 'package:valet_app/shared/arrowicon.dart';
import 'package:valet_app/shared/textfield.dart';

class Password extends StatelessWidget {
  const Password({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF6F5F5),
        leading: const MyArrowIcon(),
        title: const Text(
          "Change Password",
          style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w600),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 160),

              const Text(
                "Password",
                style: TextStyle(
                  color: Color(0xff6A11DA),
                  fontSize: 17.1,
                  fontFamily: 'Inter',
                ),
              ),
              const SizedBox(height: 7),
              const MyTextField(
                textInputTypeee: TextInputType.text,
                isPassword: false,
              ),

              const SizedBox(height: 40),

              const Text(
                "Confirm Password",
                style: TextStyle(
                  color: Color(0xff6A11DA),
                  fontSize: 17.1,
                  fontFamily: 'Inter',
                ),
              ),
              const SizedBox(height: 7),
              const MyTextField(
                textInputTypeee: TextInputType.text,
                isPassword: false,
              ),

              const SizedBox(height: 140),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff624881),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "SAVE",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Inter',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
