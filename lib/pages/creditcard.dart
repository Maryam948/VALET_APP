import 'package:flutter/material.dart';
import 'package:valet_app/shared/arrowicon.dart';
import 'package:valet_app/shared/textfield.dart';
class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: const Color(0xffF6F5F5),
        leading: const MyArrowIcon(),
        title: const Text(
          "Credit Card",  
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
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
                "Card Name",
                style: TextStyle(
                    color: Color(0xff6A11DA),
                    fontSize: 17.1,
                    fontFamily: 'Inter'),
              ),
              const SizedBox(height: 7),
              const MyTextField(
                  textInputTypeee: TextInputType.text, isPassword: false),

              const SizedBox(height: 40),
              Row(
                children: [
                  Text("Expiry Date", 
                   style: TextStyle(
                    color: Color(0xff6A11DA),
                    fontSize: 17.1,
                    fontFamily: 'Inter'),
               ),
               SizedBox(
                width: 128,
               ),
               Text("CVV", 
                   style: TextStyle(
                    color: Color(0xff6A11DA),
                    fontSize: 17.1,
                    fontFamily: 'Inter'),
               ),
                ],
              ),
              Row(
               children: [
                 Expanded(
                   flex:3,
                   child: MyTextField(
                     textInputTypeee: TextInputType.text,
                      isPassword: true,
               ),
             ),

               const SizedBox(width: 10),

                  Expanded(
                   flex: 2,
                   child: MyTextField(
                    textInputTypeee: TextInputType.text,
                  isPassword: false,
               ),
                    ),
               ],
              ),
              const SizedBox(height: 40),
              const Text(
                "Name",
                style: TextStyle(
                    color: Color(0xff6A11DA),
                    fontSize: 17.1,
                    fontFamily: 'Inter'),
              ),
              const SizedBox(height: 7),
              const MyTextField(
                  textInputTypeee: TextInputType.text, isPassword: false),
                  SizedBox(height: 100,),

                   Row(
                     children: [
                     
                       Expanded(
                         child: ElevatedButton(
                            onPressed: () {
                          Navigator.pushNamed(context, '/payment');
                                           },
                          style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff624881),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                                           ),
                                           child: const Text(
                          "Pay Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Inter',
                            fontSize: 20,
                          ),
                                           ),
                                         ),
                       ),
                       SizedBox(
                        width: 5,
                       ),
                           Expanded(
                         child: TextButton(
                        onPressed: () {
                             Navigator.pop(context);
                            },
                         child: Text( 
                          "Cancel Payment",
                          style: TextStyle(
                            color:   Color(0xff624881),
                            fontFamily: 'Inter',
                            fontSize: 20,
                         ),
                        )

                          ),
                                           ),
                     ],
                   ),



 
            ]
          ),
            ),),
    );
  }
}